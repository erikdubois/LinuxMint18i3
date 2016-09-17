#/bin/bash

# https://github.com/vivien/i3blocks

sudo apt-get install build-essential

sudo apt-get install git

sudo apt-get install -y ruby-ronn

git clone https://github.com/vivien/i3blocks

cd i3blocks

make && sudo make install
echo "#################################"
echo "#################################"
echo "my personal settings are in the .i3 directory"
echo "make a symbolic link to it"
echo "keep_all_here file to read more"
echo "#################################"
echo "#################################"
