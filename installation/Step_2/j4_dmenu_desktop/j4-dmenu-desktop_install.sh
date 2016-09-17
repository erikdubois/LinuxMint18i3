#https://github.com/enkore/j4-dmenu-desktop

git clone https://github.com/enkore/j4-dmenu-desktop.git
sudo apt-get install cmake -y
cd j4-dmenu-desktop
cmake . &&  make  &&  sudo make install
cd ..
rm -rf j4-dmenu-desktop