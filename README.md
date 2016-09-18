# Installing i3 on Linux Mint 18 Cinnamon

I3 = [improved tiling windows manager](https://i3wm.org/)

We start from an up-to-date Linux Mint 18 Cinnamon as described on 
http://erikdubois.be.

As described here at [this github](https://github.com/erikdubois/Ultimate-Linux-Mint-18-Cinnamon)

or described in [this youtube movie](https://www.youtube.com/watch?v=5db66Dt0j4E).

You will end up with all the needed icons and applications we will use in the I3 tutorials.

![Screenshots](http://i.imgur.com/QSggN1G.jpg)

We will be using the following applications in the I3 tutorials :

+ variety


#Prerequisites

First install Linux Mint 18 Cinnamon like you always would.

Then update.

Download and use proprietary drivers if needed.
Broadcom, nvidia, ati and the likes.

Upgrade your kernel if you want to. 

Get that out of the way. 

Get the code from github. Install git first

	sudo apt-get install git

Then

	git clone https://github.com/erikdubois/i3-on-Linux-Mint-18-Cinnamon.git

This folder, your are downloading, is all you will need to get I3 working <b>the easy way</b>.

##Contents of the github

Folder <b>Installation</b> is the sequence of the installation procedure you can follow till the last one or not.

Folder <b>I3</b> are all the settings to get a working I3 and it is in the folder Step 4.



# Installation Procedure of I3

Let us install I3 first. Go inside the folder <b>Installation</b>. You will find folders that are to be run in sequence. The folders are named according to our titles.

# Step 1

###Folder 1-i3-from-repo

First we will get I3 from the Linux Mint Repositories (version 4.11) by running the script

	install_i3_version_4.11_from_repositories.sh

###Folder 2-i3_with_gaps

Then we need to run a script to install a xcb-util-xrm. This package is not yet included in the repositories at mid september 2016. So we compile it ourselves. In the future this can be done easier if it is in the repo's.

	1_install_xcb-util-xrm.sh


Next we will run a script to get I3 and its dependancies (version 4.12) with the possibility to have [gaps between the windows](https://github.com/Airblader/i3) by running

	2_install_i3_gaps_next.sh

The added advantage is that we will have the <b>latest version of I3</b> as you can see on the [website](https://i3wm.org/).



# Step 2

We will install an extra menu to start applications. This menu is quite interesting as the menu is based on the .desktop files in your /usr/share/applications. Other menu's tend to show ALL programs. In linux this can be quite a long series.

Run the script to get this extra [j4-desktop-dmenu](https://github.com/enkore/j4-dmenu-desktop).


	j4-dmenu-desktop_install.sh



# Step 3

Now we will install software that is needed specifically for the use in I3.

Run the script

	install-extra-software.sh

You will install

- numlockx to enable the numeric key
- feh will help changing the wallpapers from variety
- lxappearance to change icons, themes and cursors
- scrot to take a quick screenshot of your desktop
- compton to enable some dimming of unfocused windows
- unclutter to get rid of the mouse icon if it is in the way
- volti to have a panel icon to adjust sound volume
- terminator - different terminal you can fine-tune in look




# Step 4

When you install i3 it will make an hidden folder in this location, once you login.

	~/.config/i3

You have to copy/paste the content of the i3 folder into <b>~/.config/i3</b>.

You have to make this folder yourself. It is normal that you do not have it.

You never logged in with I3.

<b>Beware the hidden files !! Copy/paste all files (CTRL + H)</b>
 
 At this point we have one hidden file with the name .i3status.conf but there might be more in the future.

Some explanations

+ config is the most important file - here all the settings of I3 that can be changed
+ i3status.conf is the configuration file for you bottom panel that can be changed
+ i3exit.sh is used to logoff, exit, reboot etc - no need to change this
+ compton.conf is telling the system to dim the windows that have no focus that can be changed
+ start-conkys.sh will start the two conky's present 
+ system-overview will show process and memory
+ system-shortcuts will help you with the shortcuts


# Step 5

## Change the looks

Use <b>lxappearance</b> to change icons, themes etc  ...
Restart programs to see the changes.


In this folder you will find two files. If you have issues changing the icons etc you can check out my settings of these files

This file should be in your home directory as a hidden file. Compare or copy/paste.

	.gtkrc-2.0

The other file is a bit deeper in the folder structure.

	~/.config/gtk-3.0/settings.ini

Compare your settings or copy/paste to this location.


# Step 6

If you want the conky's to work you will have to run the installation script for the software.

	install-conky-software.sh


# Step 7

Nothing yet to share in the folder step 7.

## I3 is MADE for DUAL and more SCREENS


The program xrandr will show you how your monitors are named.
In the config file you will need to change the code.

Uncomment the ones you need. This is my setup.


	set $firstMonitor DVI-I-1

	set $secondMonitor DVI-I-2

Use this code in your config or terminal (only once) to tell the system which monitor goes on the left.

	xrandr --output DVI-I-2 --right-of DVI-I-1 --auto




# Step 8

The terminal is a place you will be working a lot. I have choosen for terminator. In all distro's it is available and it provides the transparency of the background.

These are my settings. Put them in this folder. Compare or copy/paste.

	~/.config/terminator/config


# Step 9

These are all my config files or settings of a wide variety of applications.

Not necessary to do.


##Fix for Nemo or file manager of Linux Mint

If working with NEMO as file manager you will need to copy paste this line in a terminal or you will open
a desktop together with nemo.

<b>Not necessary any more. But I leave it in in case it might be an issue for someone else.</b>

	gsettings set org.nemo.desktop show-desktop-icons false


## Nitrogen

You can set your wallpaper with nitrogen also if variety does not prove to work.

	sudo apt install nitrogen



# Shortcuts to remember

The best thing to do is : 

	read the config file in the folder ~/.config/i3

If in a hurry, you can always check the conky or this website.

## Mod key

You can set your mod key. I have set mine to the Windows Key

This line in your config file you set the windows key or super key.

	set $mod Mod4

Some commands working with the Mod Key (windows key)

Mod + SHIFT + E  = to exit i3 and log back on with Cinnamon
Mod + D  = dmenu
Mod + SHIFT + D = j4_dmenu
Mod + Enter = terminal
Mod + SHIFT + Enter= nemo (file manager)
Mod + SHIFT + Q = end current program (move mouse over it)


##Assign section

Remember the 10 possible screens in the bottom-left corner.
I have positioned some programs on some specific desktops.

assign [class="Firefox"]          → 1
assign [class="sublime-text"]     → 2
assign [class="sublime_text"]     → 2
assign [class="Sublime_text"]     → 2
assign [class="Vlc"]              → 7
assign [class="Nemo"]             → 8
assign [class="Geary"]            → 9
assign [class="Evolution"]        → 9
assign [class="Spotify"]          → 10

Tip : if you use sublime-text. It gives us 'nag screens' to buy it. They will pop up in workspace 2 because of my setting. 


## Reload the config

Mod4 + SHIFT + R = reset or rerun i3 if you change some code in the config file


## Start up programs with CTRL + ALT + ...

ALT = Mod1 for I3

So CTRL + ALT + f will start firefox. Change the shortcuts if you do not like them in the config file.

	bindsym control+Mod1+f exec firefox 

	bindsym control+Mod1+g exec geary

	bindsym control+Mod1+e exec evolution

	bindsym control+Mod1+s exec spotify

	bindsym control+Mod1+t exec subl

	bindsym control+Mod1+b exec nemo --no-desktop

	bindsym control+Mod1+n exec cinnamon-settings

	bindsym control+mod1+m exec gnome-system-monitor



# You can stop here, log off and try-out I3

Log in by clicking the symbol in the top right of the login screen and choose i3.
I am set to autologin. It will remember your preferences to log in next time. 


# What will happen when you login

Firefox will start on window 1.
Sublime Text will start on window 2.
Nemo will start on window 8.

Spotify will start on any window... 
There is a bug/issue we have to live with. Put your mouse on top of spotify and press
	
	mod4 (i.e.windows or super) and SHIFT and 0 to move it to window 10 for example





# E N D   R E S U L T



![Screenshots](http://i.imgur.com/5RZaVMg.jpg)


Conky to help you with the basic information and the basic keyboard shortcuts

![Screenshots](http://i.imgur.com/irN98nN.jpg)


Lxappearance to change icons, themes, ...


![Screenshots](http://i.imgur.com/UcmfwmS.jpg)
