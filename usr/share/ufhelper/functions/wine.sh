#!/bin/sh
WINEOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Install Windows Compatibility layer" \
--text="Install Windows Compatibility layer Wine that allows you to run some Windows programs on UFlinux" \
--column="ID" --column="Name"  --hide-column 1 \
1 "Install Wine" \
2 "Remove Wine" \

)
case $WINEOPTION in

  1)
    gnome-terminal --title="Installing Wine" -- bash -c "sudo dpkg --add-architecture i386; sudo apt update; sudo apt install --install-recommends -y winehq-devel winetricks; zenity --info --title='Install Windows Compatibility layer' --text='Task is completed'" 
    ;;

  2)
    gnome-terminal --title="Removing Wine" -- bash -c "sudo apt autoremove -y winehq-devel winetricks; zenity --info --title='Change Linux Kernel' --text='Remove Windows Compatibility layer'" 
    ;;

esac
