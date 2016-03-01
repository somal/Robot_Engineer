import roslib
roslib.load_manifest('rqt_motion_editor')
import rospy
import os
import re
from python_qt_binding import loadUi
from python_qt_binding.QtCore import Slot, QTimer, Qt, Signal
from python_qt_binding.QtGui import QApplication, QWidget, QListWidgetItem, QMessageBox, QMenu, QLabel, QListWidget, QAbstractItemView, QPalette, QColor

from motion_editor_core.motion_data import MotionData
from timeline_widget import TimelineWidget


class MotionEditorWidget(QWidget):

    position_renamed = Signal(QListWidgetItem)

    def __init__(self, motion_publisher, robot_config):
        super(MotionEditorWidget, self).__init__()
        self.robot_config = robot_config
        self._motion_publisher = motion_publisher
        self._motion_data = MotionData(robot_config)
        self._filter_pattern = ''
        self._playback_marker = None
        self._playback_timer = None

        ui_file = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'motion_editor.ui')
        loadUi(ui_file, self)
        self.list_widgets = {}
        for group_type in robot_config.group_types():
            list_widget = QListWidget()
            list_widget.setSortingEnabled(True)
            list_widget.setDragDropMode(QAbstractItemView.DragOnly)
            list_widget.setContextMenuPolicy(Qt.CustomContextMenu)

            list_widget.customContextMenuRequested.connect(
                lambda pos, _group_type=group_type: self.positions_list_context_menu(_group_type, pos)
            )
            list_widget.itemChanged.connect(self.on_list_item_changed)

            self.position_lists_layout.addWidget(list_widget)
            self.list_widgets[group_type] = list_widget

        self._timeline_widget = TimelineWidget()
        for track_name in self.robot_config.sorted_groups():
            track_type = self.robot_config.groups[track_name].group_type
            track = self._timeline_widget.add_track(track_name, track_type)

            list_widget = self.list_widgets[track_type]
            palette = list_widget.palette()
            palette.setColor(QPalette.Base, track._colors['track'])
            list_widget.setPalette(palette)

        self.timeline_group.layout().addWidget(self._timeline_widget)

        for group_type in robot_config.group_types():
            label = QLabel(group_type)
            label.setAlignment(Qt.AlignHCenter | Qt.AlignVCenter)
            self.group_label_layout.addWidget(label)

        self.update_motion_name_combo()

        self.stop_motion_button.pressed.connect(self.on_motion_stop_pressed)

    def on_list_item_changed(self, item):
        print 'Position name changed from', item._text, 'to', item.text()
        self.position_renamed.emit(item)

    def on_motion_stop_pressed(self):
        self._clear_playback_marker()
        self._motion_publisher.stop_motion()

    def save_settings(self, plugin_settings, instance_settings):
        instance_settings.set_value('splitter', self.splitter.saveState())
        instance_settings.set_value('filter_pattern', self.filter_pattern_edit.text())
        instance_settings.set_value('filter_motions_checked', self.filter_motions_check.isChecked())
        instance_settings.set_value('filter_positions_checked', self.filter_positions_check.isChecked())

    def restore_settings(self, plugin_settings, instance_settings):
        if instance_settings.contains('splitter'):
            self.splitter.restoreState(instance_settings.value('splitter'))
        else:
            self.splitter.setSizes([300, 100])
        self.filter_pattern_edit.setText(instance_settings.value('filter_pattern', ''))
        self.filter_motions_check.setChecked(instance_settings.value('filter_motions_checked', False) in (1, True, 'true'))
        self.filter_positions_check.setChecked(instance_settings.value('filter_positions_checked', False) in (1, True, 'true'))

    @Slot()
    def on_clear_motion_button_clicked(self):
        self._timeline_widget.scene().clear()

    @Slot()
    def on_delete_motion_button_clicked(self):
        motion_name = str(self.motion_name_combo.currentText())
        if len(motion_name) == 0:
            QMessageBox.warning(self, 'Error', 'No motion selected to delete.')
            return
        if motion_name not in self._motion_data:
            QMessageBox.warning(self, 'Error', 'Motion "%s" not in motion list.' % motion_name)
            return
        self._motion_data.delete(motion_name)
        self.update_motion_name_combo()

    @Slot()
    def on_save_motion_button_clicked(self):
        motion_name = str(self.motion_name_combo.currentText())
        if len(motion_name) == 0:
            QMessageBox.warning(self, 'Error', 'No name given to save this motion.')
            return
        self._motion_data.save(motion_name, self.get_motion_from_timeline())
        self.update_motion_name_combo()

    @Slot()
    def on_load_motion_button_clicked(self):
        motion_name = str(self.motion_name_combo.currentText())
        if len(motion_name) == 0:
            QMessageBox.warning(self, 'Error', 'No motion selected to load.')
            return
        if motion_name not in self._motion_data:
            QMessageBox.warning(self, 'Error', 'Motion "%s" not in motion list.' % motion_name)
            return
        self.on_clear_motion_button_clicked()
        motion = self._motion_data[motion_name]
        for group_name, poses in motion.items():
            for pose in poses:
                data = self.robot_config.groups[group_name].adapt_to_side(pose['positions'])
                self._timeline_widget.scene().add_clip(group_name, pose['name'], pose['starttime'], pose['duration'], data)

    @Slot()
    def on_null_motion_button_clicked(self):
        self._clear_playback_marker()
        for group_name in self.robot_config.groups:
            target_position = [0] * len(self.robot_config.groups[group_name].joints)
            self._motion_publisher.move_to_position(group_name, target_position, self.time_factor_spin.value())

    @Slot()
    def on_run_motion_button_clicked(self):
        motion_name = str(self.motion_name_combo.currentText())
        if len(motion_name) == 0:
            QMessageBox.warning(self, 'Error', 'No motion selected to run.')
            return
        if motion_name not in self._motion_data:
            QMessageBox.warning(self, 'Error', 'Motion "%s" not in motion list.' % motion_name)
            return
        self._clear_playback_marker()
        self._motion_publisher.publish_motion(self._motion_data[motion_name], self.time_factor_spin.value())
        print '[Motion Editor] Running motion:', motion_name

    @Slot(str)
    def on_filter_pattern_edit_textChanged(self, pattern):
        self._filter_pattern = pattern
        self._apply_filter_to_position_lists()
        self.update_motion_name_combo()

    def _apply_filter_to_position_lists(self):
        for group_type in self.robot_config.group_types():
            list_widget = self.list_widgets[group_type]
            for row in range(list_widget.count()):
                item = list_widget.item(row)
                hidden = self.filter_positions_check.isChecked() and re.search(self._filter_pattern, item.text()) is None
                item.setHidden(hidden)

    @Slot(bool)
    def on_filter_positions_check_toggled(self, checked):
        self._apply_filter_to_position_lists()

    @Slot(bool)
    def on_filter_motions_check_toggled(self, checked):
        self.update_motion_name_combo()

    def update_motion_name_combo(self):
        combo = self.motion_name_combo
        # remember selected motion name
        motion_name = str(combo.currentText())
        # update motion names
        combo.clear()
        motion_names = self._motion_data.keys()
        if self.filter_motions_check.isChecked():
            motion_names = [name for name in motion_names if re.search(self._filter_pattern, name) is not None]
        combo.addItems(sorted(motion_names))
        # restore previously selected motion name
        motion_index = combo.findText(motion_name)
        combo.setCurrentIndex(motion_index)

    def update_positions_lists(self, positions):
        for group_type in self.robot_config.group_types():
            list_widget = self.list_widgets[group_type]
            list_widget.clear()
            for name, position in positions[group_type].items():
                item = QListWidgetItem(name)
                item._data = position
                item._text = name
                item._type = group_type
                item.setFlags(item.flags() | Qt.ItemIsEditable)
                list_widget.addItem(item)
        self._apply_filter_to_position_lists()

    def positions_list_context_menu(self, group_type, pos):
        list_widget = self.list_widgets[group_type]
        list_item = list_widget.itemAt(pos)
        if list_item is None:
            return

        menu = QMenu()
        move_to = {}
        for group in self.robot_config.group_list():
            if list_item._type == group.group_type:
                move_to[menu.addAction('move "%s"' % group.name)] = [group.name]
        # move_to[menu.addAction('move all')] = list(move_to.itervalues())
        move_to[menu.addAction('move all')] = [group_list[0] for group_list in list(move_to.itervalues())]
        result = menu.exec_(list_widget.mapToGlobal(pos))
        if result in move_to:
            group_names = move_to[result]
            for group_name in group_names:
                target_positions = self.robot_config.groups[group_name].adapt_to_side(list_item._data)
                self._motion_publisher.move_to_position(group_name, target_positions, self.time_factor_spin.value())
                print '[Motion Editor] Moving %s to: %s' % (group_name, zip(self.robot_config.groups[group_name].joints_sorted(), target_positions))

    def get_motion_from_timeline(self):
        motion = {}
        for group_name, clips in self._timeline_widget.scene().clips().items():
            motion[group_name] = []
            for clip in clips:
                pose = {
                    'name': clip.text(),
                    'starttime': clip.starttime(),
                    'duration': clip.duration(),
                    'positions': self.robot_config.groups[group_name].adapt_to_side(clip.data()),
                }
                motion[group_name].append(pose)
        return motion

    @Slot()
    def on_run_timeline_button_clicked(self):
        print '[Motion Editor] Running timeline.'
        self._playback_duration = 0.0
        for clips in self._timeline_widget.scene().clips().values():
            if len(clips) > 0 and self._playback_duration < clips[-1].endtime():
                self._playback_duration = clips[-1].endtime()
        self._playback_time_factor = self.time_factor_spin.value()

        self._clear_playback_marker()
        self._playback_marker = self._timeline_widget.scene().add_marker(0.0)

        self._playback_timer = QTimer()
        self._playback_timer.setInterval(30)
        self._playback_timer.timeout.connect(self._playback_update)

        self._playback_start = rospy.get_time()
        self._motion_publisher.publish_motion(self.get_motion_from_timeline(), self.time_factor_spin.value())
        self._playback_timer.start()

    def _clear_playback_marker(self):
        if self._playback_timer is not None:
            self._playback_timer.stop()
        if self._playback_marker is not None:
            self._playback_marker.remove()

    @Slot()
    def _playback_update(self):
        duration = (rospy.get_time() - self._playback_start) / self._playback_time_factor
        if duration > self._playback_duration:
            self._clear_playback_marker()
        else:
            self._playback_marker.set_time(duration)


if __name__ == '__main__':
    import sys
    from motion_editor_core.motion_publisher import MotionPublisher
    app = QApplication(sys.argv)
    widget = MotionEditorWidget(MotionPublisher())
    positions = {
        'arm': {'test_arm_1': range(6), 'test_arm_2': range(6), },
        'leg': {'test_leg_1': range(6), 'test_leg_2': range(6), },
        'torso': {'test_torso_1': range(3), 'test_torso_2': range(3), },
        'neck': {'test_neck_1': range(1), 'test_neck_2': range(1), },
    }
    widget.update_positions_lists(positions)
    widget.show()
    app.exec_()
