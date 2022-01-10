#!/bin/sh
gnome-terminal --title="Installing DBeaver" -- bash -c "flatpak install io.dbeaver.DBeaverCommunity --assumeyes; zenity --info --title='Install DBeaver' --text='Task is completed'"  
