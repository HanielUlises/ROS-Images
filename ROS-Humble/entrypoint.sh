#!/bin/bash
set -e

[ -f /opt/ros/humble/setup.bash ] && source /opt/ros/humble/setup.bash
[ -f /ros2_ws/install/setup.bash ] && source /ros2_ws/install/setup.bash
a
echo "========================================"
echo "  ROS2 Humble + Ignition Gazebo"
echo "  GPU: Intel iGPU / Mesa DRI"
echo "========================================"
echo "  ROS_DISTRO : ${ROS_DISTRO}"
echo "  DRI driver : ${GALLIUM_DRIVER} (iris = Intel Iris/UHD)"
echo "  GL version : ${MESA_GL_VERSION_OVERRIDE}"
echo ""
echo "  Check GPU:  glxinfo | grep 'OpenGL renderer'"
echo "  Launch sim: ign gazebo shapes.sdf"
echo "========================================"

exec "$@"