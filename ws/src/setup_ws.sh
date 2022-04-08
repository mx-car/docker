#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install ws"

source /opt/ros/${ROS_DISTRO}/setup.bash
cd ${PRJ_DIR}/ros/ws00
