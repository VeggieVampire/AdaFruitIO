#!/usr/bin/python
# Simple example of sending a Command Line Argument value to Adafruit IO feed
# API client.
# Modified by Nick Farrow
#
# Original File from
# https://github.com/adafruit/io-client-python/blob/master/examples/simple.py
# Original Author: Tony DiCola

import sys
# Get the total number of args passed to the demo.py
total = len(sys.argv)
# Get the arguments list
cmdargs = str(sys.argv)

line1 = str(sys.argv[1])
#line2 = str(sys.argv[2])

#print line1

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

# Send a Command Line Argument to the feed.  This will create the feed if it doesn't
# exist already.

#Converting Command Line Argument to Adafruit IO format 
AIOconv = "'"+line1+"'"

aio.send('Weather', AIOconv )
