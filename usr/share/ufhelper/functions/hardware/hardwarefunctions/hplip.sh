#!/bin/bash
gnome-terminal --title="Installing HPLIP" -- bash -c "sudo apt install hplip-gui -y; zenity --info --title='Install HPLIP' --text='Task is completed'"  
