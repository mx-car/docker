#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install ws"

source /opt/ros/${ROS_DISTRO}/setup.bash

mkdir -p ${PRJ_DIR}/ros2/ws00/src
cd ${PRJ_DIR}/ros2/ws00/src/
git clone https://github.com/mx-car/mxr.git 
cd ${PRJ_DIR}/ros2/ws00
#rosdep update
#rosdep install -i --from-path src --rosdistro galactic -y
colcon build
echo "source ${PRJ_DIR}/ros2/ws00/install/setup.bash" >> ~/.bashrc
