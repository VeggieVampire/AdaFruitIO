echo "updating/installing setuptools"
sudo pip install --upgrade setuptools
echo "updating/installing Adafruit_IO"
sudo pip install Adafruit_IO


echo -n "Enter your AIO KEY [ENTER]: "
read AIOkey
echo $AIOkey
echo $AIOkey>key.cfg
chmod 600 key.cfg

#Work in Progress (NOT WORKING YET)
# Send a string value 'OFF' to the feed 'Red', creating it if it doesn't 
# exist already.
#aio.send('Red', 'OFF')
