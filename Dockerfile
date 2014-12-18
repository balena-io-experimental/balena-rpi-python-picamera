FROM resin/rpi-raspbian:wheezy

# Install Python and picamera lib
RUN apt-get update && install -y python libraspberrypi-bin python-picamera

# add the root dir to the /app dir in the container env
ADD . /app

# tell python to execute demo.py
CMD ["python", "/app/demo.py"]

