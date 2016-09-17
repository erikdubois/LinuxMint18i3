
#https://faq.i3wm.org/question/68/how-to-build-and-install-i3-from-sources/

git clone https://github.com/i3/i3.git

# installing dependancies
sudo apt-get install libxcb1-dev -y
sudo apt-get install libxcb-keysyms1-dev  -y
sudo apt-get install libxcb-util0-dev  -y
sudo apt-get install libxcb-icccm4-dev  -y
sudo apt-get install libyajl-dev  -y
sudo apt-get install libstartup-notification0-dev   -y
sudo apt-get install libxcb-randr0-dev  -y
sudo apt-get install libev-dev  -y
sudo apt-get install libxcb-xinerama0-dev  -y
sudo apt-get install libpango1.0-dev  -y
sudo apt-get install libxcursor-dev  -y
sudo apt-get install libxcb-cursor-dev -y
sudo apt-get install libxcb-xkb-dev -y
sudo apt-get install libxkbcommon-dev -y
sudo apt-get install libxkbcommon-x11-dev -y

# go to the directory
cd i3
make && sudo make install
