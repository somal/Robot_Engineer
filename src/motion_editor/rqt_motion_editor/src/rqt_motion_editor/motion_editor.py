import roslib
roslib.load_manifest('rqt_motion_editor')
import rospy

from rqt_gui_py.plugin import Plugin
from python_qt_binding.QtCore import Signal
from python_qt_binding.QtGui import QWidget, QVBoxLayout

from motion_editor_core.motion_publisher import MotionPublisher

from .position_editor_widget import PositionEditorWidget
from .motion_editor_widget import MotionEditorWidget
from .input_output_selector_widget import InputOutputSelectorWidget

from motion_editor_core.robot_config import RobotConfigLoader


class MotionEditorPlugin(Plugin):
    updateStateSignal = Signal(object)

    def __init__(self, context):
        super(MotionEditorPlugin, self).__init__(context)
        self.setObjectName('MotionEditorPlugin')

        config_loader = RobotConfigLoader()
        try:
            robot_config_name = rospy.get_param('/motion_editor/robot_config')
        except KeyError:
            rospy.logwarn('Could not find robot config param in /motion_editor/robot_config. Using default config for '
                          'Thor Mang.')
            robot_config_name = 'thor'
        config_loader.load_xml_by_name(robot_config_name + '_config.xml')

        motion_publishers = {}
        for target in config_loader.targets:
            motion_publishers[target.name] = MotionPublisher(config_loader.robot_config, target.joint_state_topic, target.publisher_prefix)

        input_output_selector = InputOutputSelectorWidget(motion_publishers)
        self._motion_editor = MotionEditorWidget(input_output_selector, config_loader.robot_config)
        position_editor = PositionEditorWidget(input_output_selector, config_loader.robot_config)
        position_editor.position_list_updated.connect(self._motion_editor.update_positions_lists)
        position_editor.position_list_updated.emit(position_editor._position_data)
        self._motion_editor.position_renamed.connect(position_editor.on_position_renamed)

        layout = QVBoxLayout()
        layout.addWidget(input_output_selector)
        layout.addWidget(position_editor)
        layout.addWidget(self._motion_editor)
        self._widget = QWidget()
        self._widget.setLayout(layout)
        context.add_widget(self._widget)

    def save_settings(self, plugin_settings, instance_settings):
        self._motion_editor.save_settings(plugin_settings, instance_settings)

    def restore_settings(self, plugin_settings, instance_settings):
        self._motion_editor.restore_settings(plugin_settings, instance_settings)
