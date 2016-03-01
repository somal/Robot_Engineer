from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

d = generate_distutils_setup()
d['packages'] = ['motion_editor_core']
d['scripts'] = ['scripts/kinematic_trajectory_controller', 'scripts/motion_service']
d['package_dir'] = {'': 'src'}

setup(**d)
