#!/bin/sh
STEAMOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Manage Steam" \
--text="Choose action you want to perform" \
--column="ID" --column="Name" --column="Description" --hide-column 1 \
1 "Install Steam" "Recommended option that installs Steam into flatpak enviroment" \
2 "Install Steam Native" "NOT RECOMMENDED! other addons from UFlinux Helper wont work!" \
3 "Install Proton-GE" "Install Proton-GE (community build of Proton by GloriousEggroll for running Windows games)" \
4 "Install protontricks" "Tweaking tool for Proton" \
5 "Add folder that Steam can access" "Steam is restricted from accessing certain folders you can allow new folder from here or from flatseal app" \
)

case $STEAMOPTION in

  1)
    gnome-terminal --title="Installing Steam" -- bash -c "sudo flatpak install com.valvesoftware.Steam --assumeyes; zenity --info --title='Install Steam' --text='Task is completed'" 
    ;;

  2)
    gnome-terminal --title="Installing Steam Native" -- bash -c "sudo dpkg --add-architecture i386; sudo apt update; sudo apt install steam-installer -y; zenity --info --title='Install Steam Native' --text='Task is completed'"  
    ;;
  3)
    gnome-terminal --title="Installing Proton-GE" -- bash -c "flatpak install com.valvesoftware.Steam.CompatibilityTool.Proton-GE --assumeyes; zenity --info --title='Install Proton-GE' --text='Task is completed'"  
    ;;
  4)
    gnome-terminal --title="Installing protontricks" -- bash -c "flatpak install com.github.Matoking.protontricks --assumeyes; zenity --info --title='Install protontricks' --text='Task is completed'"  
    ;;
  5)
	NEWSTEAMFOLDERPATH=$(zenity --file-selection --directory --title "Select Directory that is inaccessible by Steam")
	pkexec flatpak override com.valvesoftware.Steam --filesystem=$NEWSTEAMFOLDERPATH
	if $? -eq 0
	then
	zenity --width=200 --height=80 --info --title="Add Steam folder" --text="Task is completed \n $NEWSTEAMFOLDERPATH \n is now accessible by Steam"
	else
	zenity --width=200 --height=80 --error --title="Add Steam folder" --text="Task is not completed"
	fi
    ;;
esac
