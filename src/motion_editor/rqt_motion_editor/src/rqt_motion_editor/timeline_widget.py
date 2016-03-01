import os
from python_qt_binding import loadUi
from python_qt_binding.QtCore import Qt, QPointF
from python_qt_binding.QtGui import QWidget, QColor, QBrush, QGraphicsItem, QGraphicsRectItem, QGraphicsScene, \
    QGraphicsSimpleTextItem, QGraphicsView, QFont, QMenu, QPen, QLabel, QGraphicsLineItem, QWheelEvent


class TimelineClip(QGraphicsRectItem):
    _delta_duration = 0.005
    _z = 1.0
    _precision = 3

    def __init__(self, track, text, starttime, duration):
        self._track = track
        super(TimelineClip, self).__init__(0.0, 0.0, duration, track.height, None, track.scene())
        self.setFlag(QGraphicsItem.ItemSendsScenePositionChanges)
        self.setFlag(QGraphicsItem.ItemIsMovable)
        self.setZValue(self._z)
        self.setBrush(QBrush(self._track._colors['item']))
        self.setPen(QPen(self._track._colors['item']))

        self._text = QGraphicsSimpleTextItem(text, self)
        self._text.setBrush(QColor(Qt.black))
        self._text.setFont(QFont('sans', 12))
        self._text.setPos(0.05, 0.05)
        self._text.setFlag(QGraphicsItem.ItemIgnoresTransformations)

        self.set_starttime(starttime)
        self.set_data([])


    def remove(self):
        self.scene().removeItem(self)


    def text(self):
        return self._text.text()

    def set_text(self, text):
        self._text.setText(text)


    def starttime(self):
        return self.pos().x()

    def set_starttime(self, starttime):
        self.setPos(starttime, self._track._y)


    def duration(self):
        return self.rect().width()

    def set_duration(self, duration):
        rect = self.rect()
        rect.setWidth(duration)
        self.setRect(rect)


    def endtime(self):
        return self.starttime() + self.duration()

    def set_endtime(self, endtime):
        self.set_duration(endtime - self.starttime)


    def data(self):
        return self._data

    def set_data(self, data):
        self._data = list(data)


    def set_highlight(self, enabled=True):
        if enabled:
            self.setBrush(QBrush(self._track._colors['highlight']))
        else:
            self.setBrush(QBrush(self._track._colors['item']))


    def contextMenuEvent(self, event):
        menu = QMenu()
        clip = menu.addAction('clip')
        clip.setEnabled(False)
        menu.addSeparator()
        remove = menu.addAction('remove clip')
        result = menu.exec_(event.screenPos())
        if result == remove:
            self.scene().removeItem(self)


    def itemChange(self, change, value):
        if change == QGraphicsItem.ItemPositionChange:
            min_starttime = self._track.starttime
            max_starttime = 1000000000.0
            new_starttime = min(max(min_starttime, round(value.x(), self._precision)), max_starttime)

            # check for track change
            new_track = self.scene().track_at(value.y() + self._track.height / 2)
            if new_track is None or new_track.track_type() != self._track.track_type():
                new_track = self._track

            # prevent overlap with the next clip
            next_clip = new_track.next_clip(new_starttime)
            if next_clip is not None and next_clip is not self:
                max_starttime = next_clip.starttime() - self.duration() # move only up to the next clip
                new_starttime = min(new_starttime, max_starttime)

            # prevent overlap with the previous clip
            previous_clip = new_track.previous_clip(new_starttime)
            if previous_clip is not None and previous_clip is not self:
                min_starttime = previous_clip.endtime() # move only up to the previous clip
                new_starttime = max(new_starttime, min_starttime)

            if min_starttime <= new_starttime <= max_starttime:
                self._track = new_track
                return QPointF(new_starttime, self._track._y)

            return self.pos()

        return super(TimelineClip, self).itemChange(change, value)


    def wheelEvent(self, event):
        event.accept()
        steps = event.delta() / 120.0

        # calculate delta_duration and ensure it is not to small for the precision
        delta_duration = round(steps * self._delta_duration, self._precision)
        if steps > 0:
            delta_duration = max(delta_duration, 0.1 ** self._precision)
        else:
            delta_duration = min(delta_duration, - 0.1 ** self._precision)

        new_duration = round(self.duration() + delta_duration, self._precision)
        starttime = self.starttime()
        next_clip = self._track.next_clip(starttime)
        if next_clip and new_duration > next_clip.starttime() - starttime:
            new_duration = next_clip.starttime() - starttime # stretch only up to the next item

        self.set_duration(new_duration)


class TimelineTrack(QGraphicsRectItem):
    starttime = 0.0
    height = 0.2
    length = 120.0
    _default_colors = (Qt.red, Qt.blue, Qt.yellow, Qt.green, Qt.cyan, Qt.magenta)
    _color_alphas = {'item': 0.5, 'track': 0.25, 'highlight': 1.0}
    _type_colors = {}

    def __init__(self, scene, track_name, track_type, track_number, color=None):
        self._y = track_number * self.height
        super(TimelineTrack, self).__init__(self.starttime, self._y, self.length, self.height, None, scene)
        self._name = track_name
        self._type = track_type

        # if no color specified and non is assigned for this track type, assign next default color to this track type
        if color is None and self._type not in self._type_colors:
            color = self._default_colors[len(self._type_colors) % len(self._default_colors)]
            self._type_colors[self._type] = color

        self._colors = {}
        for part, alpha in self._color_alphas.items():
            self._colors[part] = QColor(self._type_colors[self._type])
            self._colors[part].setAlphaF(alpha)

        self.setBrush(QBrush(self._colors['track']))
        self.setPen(QPen(Qt.NoPen))


    def contextMenuEvent(self, event):
        menu = QMenu()
        clip = menu.addAction('track')
        clip.setEnabled(False)
        menu.addSeparator()
        copy_to = {}
        for destination_track in self.scene().tracks(self._type):
            if destination_track is not self:
                copy_to[menu.addAction('copy track to "%s"' % destination_track.name())] = destination_track
        clear = menu.addAction('clear track')

        result = menu.exec_(event.screenPos())
        if result == clear:
            self.clear()
        elif result in copy_to:
            destination_track = copy_to[result]
            destination_track.clear()
            for clip in self.clips():
                destination_track.add_clip(clip.text(), clip.starttime(), clip.duration(), clip.data())


    def clear(self):
        for clip in self.clips():
            clip.remove()


    def name(self):
        return self._name


    def track_type(self):
        return self._type


    def add_clip(self, text, starttime, duration, data={}):
        clip = TimelineClip(self, text, starttime, duration)
        clip.set_data(data)
        return clip


    def clips(self):
        clips = []
        for item in self.scene().items():
            if type(item) is TimelineClip and item.pos().y() == self._y:
                clips.append(item)
        return sorted(clips, key=lambda clip: clip.starttime())


    def previous_clip(self, time):
        clips = self.clips()
        clips.reverse()
        for clip in clips:
            if clip.starttime() <= time:
                return clip


    def next_clip(self, time):
        for clip in self.clips():
            if clip.starttime() > time:
                return clip


    def clip_at(self, time):
        previous_clip = self.previous_clip(time)
        if previous_clip is not None and previous_clip.endtime() > time:
            return previous_clip
        return None


class TimelineMarker(QGraphicsLineItem):
    _z = 2.0
    _default_color = Qt.magenta

    def __init__(self, scene, time, color=None):
        y2 = len(scene._tracks) * TimelineTrack.height
        super(TimelineMarker, self).__init__(time, - TimelineTrack.height, time, y2, None, scene)
        self.setZValue(self._z)
        if color is None:
            color = QColor(self._default_color)
        color.setAlphaF(0.5)
        self.setPen(QPen(QBrush(color), 0.05))


    def set_time(self, time):
        self.setPos(time, 0.0)
        self.ensureVisible()


    def remove(self):
        if self.scene() is not None:
            self.scene().removeItem(self)


class TimelineScene(QGraphicsScene):
    _time_y = -0.15
    _time_z = 0.5

    def __init__(self):
        super(TimelineScene, self).__init__()
        self._tracks = {}
        self._track_list = []
        self._drag_clip = None
        self._drop_clip = None
        for time in range(int(TimelineTrack.length)):
            self.add_time_marker(time)
        self.calculate_scene_rect()


    def calculate_scene_rect(self):
        height = (len(self._tracks) + 1) * TimelineTrack.height
        self.setSceneRect(TimelineTrack.starttime, - TimelineTrack.height, TimelineTrack.length, height)


    def add_label(self, text, x, y):
        text = self.addSimpleText(text)
        text.setBrush(QColor(Qt.blue))
        text.setFont(QFont('sans', 12))
        text.setPos(x, y)
        text.setZValue(self._time_z)
        text.setFlag(QGraphicsItem.ItemIgnoresTransformations)


    def add_time_marker(self, time):
        line = self.addLine(time, - TimelineTrack.height, time, TimelineTrack.height * 7)
        line.setPen(QPen(QColor(150, 150, 150)))
        line.setZValue(self._time_z)
        self.add_label('%.0fs' % time, time + 0.05, self._time_y)


    def add_track(self, track_name, track_type):
        track_number = len(self._tracks)
        self._tracks[track_name] = TimelineTrack(self, track_name, track_type, track_number)
        self._track_list.append(self._tracks[track_name])
        self.calculate_scene_rect()
        return self._tracks[track_name]


    def add_clip(self, track_name, text, starttime, duration, data={}):
        return self._tracks[track_name].add_clip(text, starttime, duration, data)


    def add_marker(self, time, color=None):
        return TimelineMarker(self, time, color)


    def clear(self):
        for track in self._tracks.values():
            track.clear()


    def track(self, track_name):
        self._tracks.get(track_name, None)


    def tracks(self, track_type=None):
        tracks = []
        for track in self._tracks.values():
            if track_type is None or track.track_type() == track_type:
                tracks.append(track)
        return tracks


    def track_at(self, y):
        track_number = int(y / TimelineTrack.height)
        if 0 <= track_number < len(self._track_list):
            return self._track_list[track_number]
        return None


    def clips(self):
        clips = {}
        for track in self._tracks.values():
            clips[track.name()] = track.clips()
        return clips


    def dragMoveEvent(self, event):
        self.clear_drag_drop_clips()

        try:
            list_item = event.source().selectedItems()[0]
        except:
            print '[Motion Editor] Error: dragMoveEvent: no items:', event.source().selectedItems()
            return event.ignore()

        if False in [hasattr(list_item, attr) for attr in ('_type', '_data', '_text')]:
            print '[Motion Editor] Error: dragMoveEvent: wrong item:', list_item
            return event.ignore()

        starttime = max(0.0, event.scenePos().x())
        track = self.track_at(event.scenePos().y())
        if track is None:
            return event.ignore()
        if track.track_type() != list_item._type:
            return event.ignore()

        # if there is already an item, highlight it
        self._drop_clip = track.clip_at(starttime)
        if self._drop_clip is not None:
            self._drop_clip.set_highlight(True)
            return event.acceptProposedAction()

        # duration is min of 1.0 and distance to next item
        duration = 1.0
        next_clip = track.next_clip(starttime)
        if next_clip is not None:
            duration = min(duration, next_clip.starttime() - starttime)
        # if duration is smaller than 0.1, don't accept this drop
        if duration < 0.1:
            return event.ignore()

        # add drag item
        self._drag_clip = track.add_clip(list_item._text, starttime, duration, list_item._data)
        return event.acceptProposedAction()

    def clear_drag_drop_clips(self):
        # remove drag item from timeline
        if self._drag_clip is not None:
            self.removeItem(self._drag_clip)
            self._drag_clip = None
        # remove highlighting of drop item
        if self._drop_clip:
            self._drop_clip.set_highlight(False)
            self._drop_clip = None

    def dragLeaveEvent(self, event):
        self.clear_drag_drop_clips()

    def dropEvent(self, event):
        # let drag item stay in the timeline
        self._drag_clip = None
        # when dropped onto another item, update this one
        if self._drop_clip:
            self._drop_clip.set_highlight(False)
            list_item = event.source().selectedItems()[0]
            self._drop_clip.set_data(list_item._data)
            self._drop_clip.set_text(list_item._text)
            self._drop_clip = None

        return event.acceptProposedAction()


class TimelineView(QGraphicsView):

    def __init__(self, parent=None):
        super(TimelineView, self).__init__(parent)
        self.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.setDragMode(QGraphicsView.ScrollHandDrag)
        self.setScene(TimelineScene())
        self.show_time(0.0, 10.0)

    def show_time(self, time=None, duration=None):
        visible_rect = self.mapToScene(self.viewport().geometry()).boundingRect()
        if time is None:
            time = visible_rect.x()
        if duration is None:
            duration = visible_rect.width()
        self.fitInView(time, self.sceneRect().y(), duration, self.sceneRect().height())

    def resizeEvent(self, event):
        self.show_time()

    def wheelEvent(self, event):
        # create a wheel event with a delta value scaled to the current zoom level
        visible_duration = self.mapToScene(self.viewport().geometry()).boundingRect().width()
        scaled_delta = round(event.delta() * visible_duration)
        # ensure the delta is not being scaled down to 0
        if event.delta() > 0:
            scaled_delta = max(1, int(scaled_delta))
        else:
            scaled_delta = min(-1, int(scaled_delta))
        scaled_event = QWheelEvent(event.pos(), event.globalPos(), scaled_delta, event.buttons(), event.modifiers(), event.orientation())

        # let scene items handle this event, if they like
        super(TimelineView, self).wheelEvent(scaled_event)
        if scaled_event.isAccepted():
            return

        # handle the wheel event by zooming
        mouse_pos_before = self.mapToScene(event.pos())

        # zoom only x/time axis
        steps = event.delta() / 120.0
        self.scale(1.2 ** steps, 1.0)

        mouse_pos_after = self.mapToScene(event.pos())

        # move timeline to keep same time under the mouse while zooming
        delta_x = mouse_pos_after.x() - mouse_pos_before.x()
        visible_rect = self.mapToScene(self.viewport().geometry()).boundingRect()
        self.show_time(visible_rect.x() - delta_x)

        event.accept()


class TimelineWidget(QWidget):

    def __init__(self, parent=None):
        super(TimelineWidget, self).__init__(parent)
        ui_file = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'timeline.ui')
        loadUi(ui_file, self)
        self._timeline_view = TimelineView()
        self.layout().addWidget(self._timeline_view)
        self._add_track_label('time')
        self.scene = self._timeline_view.scene

    def add_track(self, track_name, track_type):
        track = self._timeline_view.scene().add_track(track_name, track_type)
        self._add_track_label(track_name, track._colors['track'])
        return track

    def _add_track_label(self, track_name, background_color=None):
        label = QLabel(track_name)
        label.setMargin(5)
        palette = label.palette()
        palette.setColor(label.foregroundRole(), Qt.black)
        if background_color is not None:
            label.setAutoFillBackground(True)
            palette.setColor(label.backgroundRole(), background_color)
        label.setPalette(palette)
        label.setFont(QFont('sans', 13))
        self.track_label_layout.addWidget(label)


if __name__ == '__main__':
    import sys
    from python_qt_binding.QtGui import QApplication
    app = QApplication(sys.argv)
    widget = TimelineWidget()
    for track_name in ['l_leg', 'l_arm', 'torso', 'r_arm', 'r_leg', 'neck', 'pelvis']:
        track_type = track_name[2:] if track_name[1] == '_' else track_name
        widget.add_track(track_name, track_type)
        widget._timeline_view.scene().add_clip(track_name, '%s_1' % track_name, 1.0, 1.0, {})
        widget._timeline_view.scene().add_clip(track_name, '%s_2' % track_name, 3.0, 1.0, {})
        widget._timeline_view.scene().add_clip(track_name, '%s_3' % track_name, 5.0, 1.5, {})

    time = 0.0
    interval = 0.03
    marker = widget._timeline_view.scene().add_marker(time)
    from python_qt_binding.QtCore import QTimer
    def move_marker():
        global time, interval
        time += interval
        if time < 10.0:
            marker.set_time(time)
            QTimer.singleShot(int(interval * 1000), move_marker)

    widget.show()
    app.exec_()
