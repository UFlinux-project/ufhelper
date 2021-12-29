#!/bin/sh
KERNEL=$(zenity --list \
--width=500 --height=300 \
--title="Install different Web Browser" \
--text="Here you can choose your favourite web browser" \
--column="ID" --column="Name" --column="Description"  --hide-column 1 \
1 "Chromium" "Open-source Chrome browser" \
2 "Firefox" "Well known open-source web browser" \
3 "Brave" "Privacy oriented browser based on Chromium" \
4 "LibreWolf" "Privacy oriented browser based on Firefox" \
5 "Opera" "Proprietary browser based on chromium" \
6 "Vivaldi" "Feature-rich browser based on chromium"
)
case $KERNEL in

  1)
    gnome-terminal --title="Installing Chromium" -- bash -c "flatpak install org.chromium.Chromium --assumeyes; zenity --info --title='Install Chromium' --text='Task is completed'" 
    ;;

  2)
    gnome-terminal --title="Installing Firefox" -- bash -c "flatpak install org.mozilla.firefox --assumeyes; zenity --info --title='Install Firefox' --text='Task is completed'"  
    ;;

  3)
    gnome-terminal --title="Installing Brave" -- bash -c "sudo apt install brave-browser -y; zenity --info --title='Install Brave' --text='Task is completed'"
    ;;

  4)
    gnome-terminal --title="Installing LibreWolf" -- bash -c "flatpak install io.gitlab.librewolf-community --assumeyes; zenity --info --title='Install LibreWolf' --text='Task is completed'"  
    ;;
  5)
    gnome-terminal --title="Installing Opera" -- bash -c "sudo apt install opera-stable -y; zenity --info --title='Install Opera' --text='Task is completed'" 
    ;;
  6)
    gnome-terminal --title="Installing Vivaldi" -- bash -c "sudo apt install vivaldi-stable -y; zenity --info --title='Install Vivaldi' --text='Task is completed'"
  ;;
esac
