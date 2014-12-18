FROM resin/rpi-raspbian:wheezy

# Install Python and picamera lib
RUN apt-get update
RUN apt-get install -y python python-dev libraspberrypi-bin

# add the root dir to the /app dir in the container env
ADD . /app

# tell python to execute demo.py
CMD ["python", "/app/demo.py"]

