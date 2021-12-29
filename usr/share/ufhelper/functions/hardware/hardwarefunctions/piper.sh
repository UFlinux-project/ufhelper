#!/bin/bash
gnome-terminal --title="Installing Piper" -- bash -c "sudo apt install piper -y; zenity --info --title='Install Piper' --text='Task is completed'"  
