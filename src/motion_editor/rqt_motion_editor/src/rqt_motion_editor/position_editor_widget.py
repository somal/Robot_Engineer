import roslib
roslib.load_manifest('rqt_motion_editor')

import os
from python_qt_binding import loadUi
from python_qt_binding.QtCore import Signal, Slot
from python_qt_binding.QtGui import QWidget, QMessageBox

from motion_editor_core.position_data import PositionData


class PositionEditorWidget(QWidget):
    position_list_updated = Signal(dict)

    def __init__(self, motion_publisher, robot_config):
        super(PositionEditorWidget, self).__init__()

        self.robot_config = robot_config

        self._position_data = PositionData(self.robot_config)
        self._motion_publisher = motion_publisher

        ui_file = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'position_editor.ui')
        loadUi(ui_file, self)
        self.save_appendix_combo.addItems(robot_config.group_names())
        self.move_appendix_combo.addItems(robot_config.group_names())
        if len(robot_config.group_names()) > 0:
            self.save_appendix_combo.setCurrentIndex(0)
            self.move_appendix_combo.setCurrentIndex(0)
        self.position_list_updated.emit(self._position_data)

    @Slot()
    def on_delete_button_clicked(self):
        appendix_name = str(self.save_appendix_combo.currentText())
        position_name = str(self.save_name_combo.currentText())
        if len(position_name) == 0 or \
           position_name not in self._position_data[self.robot_config.groups[appendix_name].group_type]:
            QMessageBox.warning(self, 'Error', 'Position "%s" not in position list.')
            return
        self._position_data[self.robot_config.groups[appendix_name].group_type].delete(position_name)
        self.position_list_updated.emit(self._position_data)
        self.on_save_appendix_combo_currentIndexChanged(appendix_name)
        if self.robot_config.groups[self.move_appendix_combo.currentText()].group_type \
           == self.robot_config.groups[appendix_name].group_type:
            self.on_move_appendix_combo_currentIndexChanged(appendix_name)

    @Slot()
    def on_save_button_clicked(self):
        position_name = str(self.save_name_combo.currentText())
        if len(position_name) == 0:
            QMessageBox.warning(self, 'Error', 'No name given to save this position.')
            return
        appendix_name = str(self.save_appendix_combo.currentText())
        group = self.robot_config.groups[appendix_name]
        current_positions = self._motion_publisher.get_current_positions(group)
        current_positions = self.robot_config.groups[appendix_name].adapt_to_side(current_positions)
        print '[Motion Editor] Saving %s as "%s": %s' % (appendix_name, position_name, current_positions)
        self._position_data[self.robot_config.groups[appendix_name].group_type].save(position_name, current_positions)
        self.position_list_updated.emit(self._position_data)
        self.on_save_appendix_combo_currentIndexChanged(appendix_name)
        if self.robot_config.groups[self.move_appendix_combo.currentText()].group_type \
           == self.robot_config.groups[appendix_name].group_type:
            self.on_move_appendix_combo_currentIndexChanged(appendix_name)

    @Slot(str)
    def on_move_appendix_combo_currentIndexChanged(self, appendix_name):
        # remember selected position name
        position_name = str(self.move_name_combo.currentText())
        # update position names
        self.move_name_combo.clear()
        self.move_name_combo.addItems(sorted(self._position_data[self.robot_config.groups[appendix_name].group_type].keys()))
        # restore previously selected position name
        position_index = self.move_name_combo.findText(position_name)
        self.move_name_combo.setCurrentIndex(position_index)

    @Slot(str)
    def on_save_appendix_combo_currentIndexChanged(self, appendix_name):
        # remember selected position name
        position_name = str(self.save_name_combo.currentText())
        # update position names
        self.save_name_combo.clear()
        self.save_name_combo.addItems(sorted(self._position_data[self.robot_config.groups[appendix_name].group_type].keys()))
        # restore previously selected position name
        position_index = self.save_name_combo.findText(position_name)
        self.save_name_combo.setCurrentIndex(position_index)

    @Slot()
    def on_move_button_clicked(self):
        position_name = str(self.move_name_combo.currentText())
        if len(position_name) == 0:
            QMessageBox.warning(self, 'Error', 'No position selected to move to.')
            return
        appendix_name = str(self.move_appendix_combo.currentText())
        target_positions = self._position_data[self.robot_config.groups[appendix_name].group_type][position_name]
        target_positions = self.robot_config.groups[appendix_name].adapt_to_side(target_positions)
        print '[Motion Editor] Moving %s to "%s": %s' % (appendix_name, position_name, target_positions)
        self._motion_publisher.move_to_position(appendix_name, target_positions)

    def on_position_renamed(self, item):
        self._position_data[item._type].move(item._text, item.text())
        item._text = item.text()

    def shutdown(self):
        pass
