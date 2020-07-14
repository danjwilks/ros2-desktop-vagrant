#!/bin/bash

#### Setup locale

sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8


#### Setup sources

sudo apt-get update && sudo apt-get install -y curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'


#### Install ROS 2 packages

sudo apt-get update
sudo apt-get install -y ros-dashing-desktop


#### Install CycloneDDS RMW implementation

sudo apt-get install -y ros-dashing-rmw-cyclonedds-cpp


#### Install argcomplete (optional)

sudo apt-get install -y python3-argcomplete


#### Install development tools and ROS tools

sudo apt-get update && sudo apt-get install -y \
  build-essential \
  cmake \
  git \
  python3-colcon-common-extensions \
  python3-pip \
  python-rosdep \
  python3-vcstool \
  wget
# install some pip packages needed for testing
python3 -m pip install -U \
  argcomplete \
  flake8 \
  flake8-blind-except \
  flake8-builtins \
  flake8-class-newline \
  flake8-comprehensions \
  flake8-deprecated \
  flake8-docstrings \
  flake8-import-order \
  flake8-quotes \
  pytest-repeat \
  pytest-rerunfailures \
  pytest \
  pytest-cov \
  pytest-runner \
  setuptools
# install Fast-RTPS dependencies
sudo apt-get install --no-install-recommends -y \
  libasio-dev \
  libtinyxml2-dev
# install Cyclone DDS dependencies
sudo apt-get install --no-install-recommends -y \
  libcunit1-dev


# Initialize rosdep

sudo rosdep init
rosdep update
