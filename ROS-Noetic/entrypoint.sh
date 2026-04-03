#!/bin/bash
set -e

[ -f /opt/ros/noetic/setup.bash ] && source /opt/ros/noetic/setup.bash
[ -f /catkin_ws/devel/setup.bash ] && source /catkin_ws/devel/setup.bash

echo "========================================"
echo "  ROS Noetic + Gazebo 11"
echo "  GPU: Intel iGPU / Mesa DRI"
echo "========================================"
echo "  ROS_DISTRO : ${ROS_DISTRO}"
echo "  DRI driver : ${GALLIUM_DRIVER} (iris = Intel Iris/UHD)"
echo "  GL version : ${MESA_GL_VERSION_OVERRIDE}"
echo ""
echo "  Check GPU:  glxinfo | grep 'OpenGL renderer'"
echo "  Launch sim: gazebo --verbose"
echo "========================================"

exec "$@"