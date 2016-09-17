#!/bin/bash -x
#======================================================================================
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
#======================================================================================

#======================================================================================
#                               I3 IMPROVED TILING
# 
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================
#                               
# Interesting Sources : 
#
# https://i3wm.org/docs/userguide.html
# https://github.com/Arakis/autologin-on-boot
# http://www.linuxveda.com/2013/04/02/how-to-install-and-configure-hp-printer-in-arch-linux/
#
#======================================================================================



# Made to be installed on a Linux Mint 17.1 (cinnamon in my example) 



########################################
########        C O R E        #########
########################################


#Core stuff i3
sudo apt-get install -y i3 i3lock i3status i3-wm 
sudo apt-get install dmenu
# you will install suckless-tools instead 




########################################
########    A P P S  R E P O    ########
########################################


# added extra repo's for software
sudo add-apt-repository ppa:djcj/screenfetch -y
#variety wallpaper
sudo add-apt-repository ppa:peterlevi/ppa -y

sudo apt-get update

######## A C C E S S O R I E S #########

sudo apt-get install -y terminator

sudo apt-get install -y unclutter

sudo apt-get install -y variety

#sudo apt-get install -y ristretto tumbler

sudo apt-get install -y zsh

# Installation of OH-MY-ZSH from the github (best way to install!!)
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# You have to type this again - the password prompt is gone too fast

########################################################################
# echo "chsh your_username -s /bin/zsh"
# open ~/.i3/.zshrc  and change the theme to random
# ZSH_THEME="random"
#########################################################################

######## D E V E L O P M E N T #########

######## E D U C A T I O N     #########

######## G A M E S             #########

######## G R A P H I C S       #########

sudo apt-get install -y gimp inkscape

######## I N T E R N E T       #########

sudo apt-get install -y firefox adobe-flashplugin transmission-gtk skype hexchat

######## M U L T I M E D I A   #########

sudo apt-get install -y vlc 
#sudo apt-get install -y clementine


######## O F F I C E           #########

sudo apt-get install -y geary


######## S E T T I N G S       #########

       # T H E M I N G #

# Theme, icons, borders, cursors
sudo apt-get install -y lxappearance
#sudo packer -S lxappearance2-git

# application to choose a wallpaper
sudo apt-get install -y nitrogen

# variety wallpaper changer needs feh to change the walls
# extra changes must be made see folder installation
sudo apt-get install -y feh 

# to configure qt4 X11 (spotify submenu's)
sudo apt-get install -y qt4-qtconfig
# start the program qtconfig
#choose gtk+



######## S Y S T E M           #########

        # S Y S T E M  T O O L S # 

sudo apt-get install -y scrot git htop wget curl sensord sysstat glances
sudo apt-get install -y numlockx inxi dmidecode hddtemp net-tools mlocate hardinfo
numlockx on

# to be able to make usb to boot from
sudo apt-get install -y unetbootin
sudo apt-get install -y extlinux

# if not already installed - xrandr - only for dual-screens to know how the screens are named
# and set them the right way - graphical program for xrandr
# sudo apt-get install -y lxrandr

# monitor the GB/TB of your harddisk
# sudo apt-get install -y baobab

# download statistics
sudo apt-get install -y vnstat

# screenfetch (extra repo)
sudo apt-get install -y screenfetch 



        # S O U N D #

# for kazam
sudo apt-get install -y kazam



        # T H U N A R #
# using nemo
# sudo apt-get install -y thunar file-roller  thunar-archive-plugin thunar-volman
# installed via brasero
# sudo apt-get install -y gvfs

# better search with catfish and dependancies - in depth string search
sudo apt-get install -y catfish 


        # F O N T S #
# sudo apt-get install -y ttf-ubuntu-font-family
# sudo apt-get install -y fonts-droid


        # U T I L I T I E S #
sudo apt-get install -y gnome-disk-utility

        # P R I N T E R #


        # N E T W O R K #

# if you want a networkmanager and applet mostly for laptop/wireless as
# lan just works and gives no added value
# sudo apt-get install -y network-manager
# set nm-applet to run at boot in the config file





###############################################################
#
#        EXTRA      EXTRA      EXTRA      EXTRA     EXTRA      
#
###############################################################

        # D U A L  S C R E E N #

#Dualscreen - this changes just type xrandr and change the numbers
# xrandr --output DVI-I-0 --auto --left-of DVI-I-3

        # K E Y B O A R D #  

#if keyboard not azerty put in config file
# exec setxkbmap be 

        # X P R O P #

#with xprop you can find out what the class name is of a program
#to set it floating for example


        # S P E E D T E S T #

# terminal speedtest
# wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest_cli.py
# chmod +x speedtest-cli
# ./speedtest-cli --share
# https://github.com/sivel/speedtest-cli

        
        # S M A R T G I T #
        
# ??

    # K E Y B O A R D #
    # all possible bindsym possibilities
    # xmodmap -pke



echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"
