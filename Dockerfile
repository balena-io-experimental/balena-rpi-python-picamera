FROM resin/rpi-buildstep-armv6hf:latest

# Install Python and picamera lib
RUN echo "deb http://archive.raspbian.org/raspbian wheezy main contrib non-free" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python python-dev libraspberrypi-bin python-picamera

# add the root dir to the /app dir in the container env
ADD . /app

# tell python to execute demo.py
CMD ["python", "/app/demo.py"]

