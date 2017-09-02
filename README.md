# AdaFruitIO<br>
Python code for using AdaFruitIO<br>

To run this code you must setup your client.<br>

sudo apt-get update<br>
sudo apt-get install -y git build-essential curl python-pip python-smbus python-dev<br>
sudo pip install --upgrade  setuptools<br>
sudo pip install Adafruit_IO<br>

Optional:<br> 
Make your key safer by typing:<br>
chmod 600 key.cfg<br>

To view most recent values of Red, Green, Blue type:<br>
 ./ReadAdaFruitIO.py<br>
 or<br>
 python ReadAdaFruitIO.py<br>

