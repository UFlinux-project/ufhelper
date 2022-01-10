#!/bin/bash
gnome-terminal --title="Installing OpenRGB" -- bash -c "flatpak install org.openrgb.OpenRGB --assumeyes; zenity --info --title='Install OpenRGB' --text='Task is completed'"  

