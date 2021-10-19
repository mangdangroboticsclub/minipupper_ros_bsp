#!/usr/bin/env sh
# Install Mangdang driever

# build and deploy battery monitor deamon and IO configuration
sudo cp PWMController/i2c-pwm-pca9685a.dtbo /boot/firmware/overlays/
sudo cp IO_Configuration/syscfg.txt /boot/firmware/ -f
sudo cp LCD/cartoons/* /home/ubuntu/Pictures/

cd /home/ubuntu/minipupper_ros_bsp/mangdang/BatteryMonitor
cmake .
make
sudo bash install.sh

# install lcd service
sudo bash /home/ubuntu/minipupper_ros_bsp/mangdang/LCD/install.sh


