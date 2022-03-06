#!/usr/bin/env sh
# Install Mangdang driever

# build and deploy battery monitor deamon and IO configuration
sudo cp PWMController/i2c-pwm-pca9685a.dtbo /boot/firmware/overlays/
sudo cp EEPROM/i2c3.dtbo /boot/firmware/overlays/
sudo cp IO_Configuration/syscfg.txt /boot/firmware/ -f
sudo cp LCD/cartoons/* /home/ubuntu/Pictures/

cd /home/ubuntu/minipupper_ros_bsp/mangdang/FuelGauge
sudo bash install.sh

cd /home/ubuntu/minipupper_ros_bsp/mangdang/System
sudo bash install.sh


cd /home/ubuntu/minipupper_ros_bsp/mangdang/LCD
sudo bash install.sh
