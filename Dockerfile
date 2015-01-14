FROM resin/rpi-raspbian:wheezy-2015-01-15

# Install Python, pip and the camera module firmware
RUN apt-get update
RUN apt-get install -y python python-dev libraspberrypi-bin python-pip

# Install picamera python module using pip
RUN pip install picamera
# add the root dir to the /app dir in the container env
ADD . /app

# tell python to execute demo.py
CMD ["python", "/app/demo.py"]

