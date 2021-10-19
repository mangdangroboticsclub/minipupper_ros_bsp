import os
import sys
import time
from PIL import Image
from socket import *

host = ''
port = 11113
buffsize = 4096
addr = (host, port)

udpServer = socket(AF_INET, SOCK_DGRAM)
udpServer.bind(addr)

sys.path.append("/home/ubuntu/MiniPupperROS/mangdang")
sys.path.extend([os.path.join(root, name) for root, dirs, _ in os.walk("/home/ubuntu/MiniPupperROS/mangdang") for name in dirs])
from LCD.ST7789 import ST7789

def main():
    """ The demo for picture show
    """

    #init st7789 device 
    time.sleep(5)
    disp = ST7789()
    disp.begin()
    disp.clear()
    image=Image.open("/home/ubuntu/Pictures/logo.png")
    image.resize((320,240))
    disp.display(image)
    return 0 # no need to create UDP service
    pic_name = "none"
    while 1:
        data, addr = udpServer.recvfrom(buffsize)
        pic_name = data.decode()
        try:
            image=Image.open("/home/ubuntu/Pictures/" + str(pic_name))
        except:
            print ("Pic Show service , no pic " , pic_name)
            continue
        pic_name = "none"
        image.resize((320,240))
        disp.display(image)
try:
    main()
except KeyboardInterrupt:
    pass

