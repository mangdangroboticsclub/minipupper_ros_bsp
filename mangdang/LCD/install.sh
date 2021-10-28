#!/usr/bin/env sh


cd /home/ubuntu/minipupper_ros_bsp/mangdang/LCD

sudo ln -s $(realpath .)/lcd.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable lcd
sudo systemctl start lcd
