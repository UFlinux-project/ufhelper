#!/bin/sh
gnome-terminal --title="Installing Lutris" -- bash -c "sudo apt install lutris -y; zenity --info --title='Install Lutris' --text='Task is completed'" 
