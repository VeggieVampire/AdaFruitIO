echo "updating/installing setuptools"
sudo pip install --upgrade setuptools
echo "updating/installing Adafruit_IO"
sudo pip install Adafruit_IO


echo -n "Enter your AIO KEY [ENTER]: "
read AIOkey
echo $AIOkey
echo $AIOkey>key.cfg
chmod 600 key.cfg


#untested go no further!
echo "untested go no further!"
sleep 120
echo "untested go no further!"
sleep 120
echo "untested go no further!"
sleep 120
echo "untested go no further!"
sleep 120

#Work in Progress (NOT WORKING YET)
echo -n "Enter your AIO feed name [ENTER]: "
read $AIOfeed
echo $AIOfeed

#creating a test file to check and make a Adafruit IO connection.
echo "f = open('key.cfg','r')>TestAIO.py
echo 'string = ""'>>TestAIO.py
echo 'while 1:'>>TestAIO.py
echo '    line = f.readline()'>>TestAIO.py
echo '    if not line:break'>>TestAIO.py
echo '    string += line'>>TestAIO.py
echo 'f.close()'>>TestAIO.py
echo 'from Adafruit_IO import Client'>>TestAIO.py
echo 'ADAFRUIT_IO_KEY = string'>>TestAIO.py
echo 'aio = Client(ADAFRUIT_IO_KEY)'>>TestAIO.py
echo "aio.send($AIOfeed, 'Working')">>TestAIO.py
echo "data = aio.receive('$AIOfeed')">>TestAIO.py
echo "print('$AIOfeed: {0}'.format(data.value))">>TestAIO.py
#Testing AIO
python TestAIO.py

