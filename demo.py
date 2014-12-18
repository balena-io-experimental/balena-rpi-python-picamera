#!/usr/bin/python

import time
import picamera

with picamera.PiCamera() as camera:
    camera.resolution = (320, 240)
    # Camera warm-up time
    time.sleep(2)
    camera.capture('../data/image.jpg')

# this infinite loop just allows us to keep the container running
# so we can use the webterminal to ssh in and check that the image
# was saved in /data
while 1:
	print 'waiting...'
	time.sleep(30)