#!/bin/sh
gnome-terminal --title="Installing GSConnect" -- bash -c "sudo apt install uf-gsconnect -y; gnome-extensions enable gsconnect@andyholmes.github.io; zenity --info --title='Install Windows Compatibility layer' --text='Task is completed \n now install KDEConnect app to your phone \n and you can pair them'" 
