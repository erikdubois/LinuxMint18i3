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

Let us install I3 first. Go in the folder Installation. You will find folders that are to be run in sequence. The folders are named according to our titles.

# Step 1

First we will get I3 from the Linux Mint Repositories (version 4.11) by running the script

	install_i3_version_4.11_from_repositories.sh

Next we will run a script to get I3 (version 4.12) with the possibilities to have [gaps between the windows](https://github.com/Airblader/i3) by running

	install_i3_gaps_next.sh

The added advantage is that we will have the <b>latest version of I3</b> as you can see on the [website](https://i3wm.org/).



# Step 2

We will install an extra menu to start applications. This is one is quite interesting as the menu is based on the .desktop files in your /usr/share/applications. Other menu's tend to show ALL programs. In linux this can be quite a long series.

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




# Step 4

When you install i3 it will make an hidden folder in this location

	~/.config/i3

You have to copy/paste the content of the i3 folder into <b>~/.config/i3</b>.

You can make this hidden folder in your home folder, if you somehow do not have it yet.

<b>Beware the hidden files !! Copy/paste all files (CTRL + H)</b>
 
 At this point there are no hidden files yet but there might be in the future.

Some explanations

+ config is the most important file - here all the settings of I3 that can be changed
+ i3status.conf is the configuration file for you bottom panel that can be changed
+ i3exit.sh is used to logoff, exit, reboot etc - no need to change this
+ compton.conf is telling the system to dim the windows that have no focus that can be changed
+ start-conkys.sh will start the two conky's present 
+ system-overview will show process and memory
+ system-shortcuts will help you with the shortcuts



# Step 5

## I3 is MADE for DUAL and more SCREENS


The program xrandr will show you how your monitors are named.
In the config file you will need to change the code.

Uncomment the ones you need. This is my setup.


	set $firstMonitor DVI-I-1

	set $secondMonitor DVI-I-2

Use this code in your config or terminal (only once) to tell the system which monitor goes on the left.

	xrandr --output DVI-I-2 --right-of DVI-I-1 --auto


##Fix for Nemo or file manager of Linux Mint

If working with NEMO as file manager you will need to copy paste this line in a terminal or you will open
a desktop together with nemo.

<b>Not necessary any more. But I leave it in in case it might be an issue for someone else.</b>

	gsettings set org.nemo.desktop show-desktop-icons false


## Change the looks

use <b>lxappearance</b> to change icons, themes etc  ...
Restart programs to see the changes.


## Making sure variety works 

We have to change some of the settings in the files. 

Go the file 

~/.config/variety/scripts/set_wallpaper

Change the code 

	# i3-wm/Feh. Use Feh only for i3, as it may cause problems with Nautilus, (see bug https://bugs.launchpad.net/variety/+bug/1047083)
	if [ "$XDG_CURRENT_DESKTOP" == "i3" ]; then
   			feh --bg-fill "$WP" 2&gt; /dev/null
	fi

	into

	
	
	# i3-wm/Feh. Use Feh only for i3, as it may cause problems with Nautilus, (see bug https://bugs.launchpad.net/variety/+bug/1047083)
	if [ "$XDG_SESSION_DESKTOP" == "i3" ]; then
   			feh --bg-fill "$WP" 2&gt; /dev/null
	fi

Check out the youtube movie if need be at 
http://erikdubois.be/how-to-make-variety-work-in-i3-windows-manager-linux-mint-17-3/

## Nitrogen

You can set your wallpaper with nitrogen also if variety does not prove to work.

	sudo apt install nitrogen





# Shortcuts to remember

You can set your mod key. I have set mine to the Windows Key

This is windows key
set $mod Mod4

Mod4 + SHIFT + E  = to exit i3 and log back on with Cinnamon
Mod4 + D  = dmenu
Mod4 + SHIFT + D = j4_dmenu
Mod4 + Enter = terminal
Mod4 + SHIFT = nemo (file manager)
Mod4 + SHIFT + Q = end current program

Remember the 10 possible screens in the bottom-left corner.
I have positioned some programs on some specific desktops.

Assign section
assign [class="Firefox"]          → 1

assign [class="sublime-text"]     → 2

assign [class="sublime_text"]     → 2

assign [class="Sublime_text"]     → 2

assign [class="Thunar"]           → 8

assign [class="Nemo"]             → 8

assign [class="Geary"]            → 9

assign [class="Spotify"]          → 10


Mod4 + SHIFT + R = reset or rerun i3 if you change some code in the config file


# Start up programs with ALT + CTRL + ...
mod1 = ALT

bindsym control+mod1+f exec firefox 

bindsym control+mod1+g exec geary

bindsym control+mod1+s exec spotify

bindsym control+mod1+t exec subl

bindsym control+mod1+b exec nemo --no-desktop

bindsym control+mod1+c exec catfish



# You can stop here, log off and try-out I3

Log in by clicking the symbol in the top right of the login screen and choose i3.
I am set to autologin. It will remember your settings for next time. 





# E N D   R E S U L T


i3 with gaps

![Screenshots](http://i.imgur.com/jTZGcrm.jpg)


![Screenshots](http://i.imgur.com/Eyd0R8F.png)


![Screenshots](http://i.imgur.com/7a0027R.png)


![Screenshots](http://i.imgur.com/QhRDssB.jpg)


![Screenshots](http://i.imgur.com/CgorIqo.jpg)