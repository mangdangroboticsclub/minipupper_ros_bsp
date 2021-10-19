#!/usr/bin/env sh

###Install all software dependence for Mini Pupper

#Update time and source
sudo date -s "$(curl -s --head http://www.baidu.com | grep ^Date: | sed 's/Date: //g')"
sudo apt-get update

#dependencies
sudo apt-get install -y python3-pip
sudo apt-get install -y cmake
sudo apt-get install -y i2c-tools

#Libraries of Python3
yes | sudo pip3 install numpy
yes | sudo pip3 install RPi.GPIO
yes | sudo pip3 install spidev

