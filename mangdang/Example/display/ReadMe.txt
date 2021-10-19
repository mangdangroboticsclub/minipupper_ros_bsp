####
#### The demo for developers to change the display show
####

This is a demo for developers to change his owm pic to the LCD

If you install official ubuntu rom , you need to append "dtoverlay=spi0-1cs" into syscfg.txt. If Mangdang release rom , don't need to do this.

Before you work, the following step is recommended:

1. "ls -l /dev/spidev0.0"   to  check if spi node exist

and then: 

####
#### run this demo
####

python3 sample.py



