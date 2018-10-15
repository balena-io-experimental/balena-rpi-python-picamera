# balena + python + raspberry pi camera module

This is a simple app that demonstrates how to get started with the raspberry pi camera module. All it does is snap one photo and then stores it in the /data directory on the pi.

You will need to make some changes to the Raspberry Pi device configuration to enable the camera, instructions here -> [https://balena.io/docs/learn/develop/hardware/i2c-and-spi/#raspberry-pi-camera-module](https://balena.io/docs/learn/develop/hardware/i2c-and-spi/#raspberry-pi-camera-module)

The /data directory allows the data, in this case the image, to persist between code deployments with [balena](https://balena.io/). Then you can use the web terminal session to poke around on the pi itself and see that your photo was successfully saved in the /data directory.

A file server is running on the device, by using python's simplehttpserver. That way you can view the image taken by simply using the public url of the device.

This option can be found in the `Actions` tab in your device dashboard.

![Actions Tab](/img/enable-public-URLs.png)

This example makes use of the awesome [picamera](https://picamera.readthedocs.io/en/latest/) python module, which natively controls the camera module and does not depend on raspistill.
