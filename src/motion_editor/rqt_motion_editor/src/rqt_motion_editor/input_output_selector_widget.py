import roslib
roslib.load_manifest('rqt_motion_editor')

import os
from python_qt_binding import loadUi
from python_qt_binding.QtGui import QWidget, QRadioButton


class InputOutputSelectorWidget(QWidget):

    def __init__(self, motion_publishers):
        super(InputOutputSelectorWidget, self).__init__()

        self._motion_publishers = motion_publishers
        self._selected_publisher = {'input': None, 'output': None}

        ui_file = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'input_output_selector.ui')
        loadUi(ui_file, self)

        self._input_buttons = {}
        self._output_buttons = {}
        for name in motion_publishers.keys():
            self._input_buttons[name] = self._add_radio_button(self.input_group, 'input', name)
            self._output_buttons[name] = self._add_radio_button(self.output_group, 'output', name)

        if len(self._input_buttons.values()) > 0:
            self._input_buttons.values()[0].setChecked(True)
        if len(self._output_buttons.values()) > 0:
            self._output_buttons.values()[0].setChecked(True)

    def _add_radio_button(self, group, group_name, name):
        radio_button = QRadioButton(name)
        radio_button.toggled.connect(lambda checked: self.on_radio_button_toggled(group_name, name, checked))
        group.layout().addWidget(radio_button)
        return radio_button

    def on_radio_button_toggled(self, group_name, name, checked):
        if checked:
            self._selected_publisher[group_name] = self._motion_publishers[name]

    def get_current_positions(self, *args, **kwargs):
        v = self._selected_publisher['input'].get_current_positions(*args, **kwargs)
        return v

    def move_to_position(self, *args, **kwargs):
        return self._selected_publisher['output'].move_to_position(*args, **kwargs)

    def publish_motion(self, *args, **kwargs):
        return self._selected_publisher['output'].publish_motion(*args, **kwargs)

    def stop_motion(self, *args, **kwargs):
        return self._selected_publisher['output'].stop_motion(*args, **kwargs)

    def shutdown(self):
        pass
