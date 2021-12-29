#!/bin/bash
gnome-terminal --title="Installing Razer software" -- bash -c "sudo apt install openrazer-meta polychromatic -y; zenity --info --title='Install Razer software' --text='Task is completed \n now please reboot'"
