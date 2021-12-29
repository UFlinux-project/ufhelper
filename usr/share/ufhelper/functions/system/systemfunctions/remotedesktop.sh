#!/bin/bash
STEAMOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Choose your Remote Desktop tool" \
--column="ID" --column="Tech" --column="Name" --column="Description" --hide-column 1 \
1 "VNC" "GNOME remote assistance" "Remote help with VNC" \
2 "" "TeamViewer" "Well known remote assistance tool" \
3 "" "AnyDesk" "Well known remote assistance tool" \
4 "NX" "NoMachine" "High quality multiplatform remote desktop tool" \
)

case $STEAMOPTION in

  1)
    gnome-control-center sharing 
    ;;

  2)
    gnome-terminal --title="Installing TeamViewer" -- bash -c "sudo apt install teamviewer -y; zenity --info --title='Install TeamViewer' --text='Task is completed'"  
    ;;
  3)
    gnome-terminal --title="Installing AnyDesk" -- bash -c "flatpak install com.anydesk.Anydesk --assumeyes; zenity --info --title='Install AnyDesk' --text='Task is completed'"  
    ;;
  4)
    gnome-terminal --title="Installing NoMachine" -- bash -c "sudo apt install nomachine -y; zenity --info --title='Install NoMachine' --text='Task is completed'"  
    ;;
esac
