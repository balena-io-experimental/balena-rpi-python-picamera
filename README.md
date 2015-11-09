#resin.io + python + raspberry pi camera module

This is a simple app that demonstrates how to get started with the raspberry pi camera module. All it does is snap one photo and then stores it in the /data directory on the pi. 

You will need to make some changes to the downloaded RPI/RPI2 image to enable the camera, instructions here -> [http://docs.resin.io/#/pages/hardware/i2c-and-spi.md#raspberry-pi-camera-module](http://docs.resin.io/#/pages/hardware/i2c-and-spi.md#raspberry-pi-camera-module)

The /data directory allows the data, in this case the image, to presist between code deployments with [resin.io](https://resin.io/). Then you can use the web terminal session to poke around on the pi itself and see that your photo was successfully saved in the /data directory.

This example makes use of the awesome [picamera](http://picamera.readthedocs.org/en/release-1.8/) python module, which natively controls the camera module and does not depend on raspistill.

Please note that this example works only with a raspberry pi and the camera module.