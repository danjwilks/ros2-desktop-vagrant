# Overview

Sets up a Vagrant Ubuntu 18.04 Desktop box
* Hardware
    * 4GB memory
    * 2 CPUs
    * 32MB VRAM
* Software
    * VirtualBox Guest Additions
    * ROS2 Dashing Desktop
    * ROS2 Dashing CycloneDDS RMW implementation
    * Development tools and ROS tools

# Pre-requisites

* Vagrant 2.2.x (or later)
    * https://www.vagrantup.com/
* VirtualBox 6.1.x (or later)
    * https://www.virtualbox.org/
    * Install the **VirtualBox Extension Pack** as well

# Steps

```
git clone https://github.com/ngyewch/ros2-desktop-vagrant.git
cd ros2-desktop-vagrant/dashing
vagrant up --provider virtualbox
```

Estimated time: ~30m
* Vagrant box download (first-time download): ~10m
* Provisioning (first-time): ~15m

Credentials:
* Username: `vagrant`
* Password: `vagrant`

# References

* Base Vagrant box:
    * https://app.vagrantup.com/peru/boxes/ubuntu-18.04-desktop-amd64
* ROS2 dashing installation
    * https://index.ros.org/doc/ros2/Installation/Dashing/Linux-Install-Debians/
    * https://index.ros.org/doc/ros2/Installation/Dashing/Linux-Development-Setup/
