#!/usr/bin/python
# Simple example of receiving values from Adafruit IO feed
# API client.
# Modified by Nick Farrow
#
# Original File from
# https://github.com/adafruit/io-client-python/blob/master/examples/simple.py
# Original Author: Tony DiCola

#read key from file
f = open('key.cfg','r')
string = ""
while 1:
    line = f.readline()
    if not line:break
    string += line
f.close()

# Import Adafruit IO REST client.
from Adafruit_IO import Client

# Set to your Adafruit IO key.
ADAFRUIT_IO_KEY = string
# Create an instance of the REST client.
aio = Client(ADAFRUIT_IO_KEY)

# Read the most recent value feeds from Red, Blue & Green.
data = aio.receive('Red')
print('Red: {0}'.format(data.value))
data = aio.receive('Blue')
print('Blue: {0}'.format(data.value))
data = aio.receive('Green')
print('Green: {0}'.format(data.value))
