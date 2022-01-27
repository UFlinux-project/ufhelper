#!/bin/bash
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
STEAMOPTION=$(zenity --list \
--width=500 --height=300 \
--title="$L_REMOTENAME" \
--column="ID" --column="$L_TECH" --column="$L_NAME" --column="$L_DESCRIPTION" --hide-column 1 \
1 "VNC" "GNOME remote assistance" "$L_REMOTEDESC1" \
2 "" "TeamViewer" "$L_REMOTEDESC2" \
3 "" "AnyDesk" "$L_REMOTEDESC2" \
4 "NX" "NoMachine" "$L_REMOTEDESC3" \
)

case $STEAMOPTION in

  1)
    gnome-control-center sharing 
    ;;

  2)
    gnome-terminal --title="$L_INSTALLING TeamViewer" -- bash -c "sudo apt install teamviewer -y; zenity --info --title='$L_INSTALLED1 TeamViewer' --text='$L_COMPLETED'"  
    ;;
  3)
    gnome-terminal --title="$L_INSTALLING AnyDesk" -- bash -c "flatpak install com.anydesk.Anydesk --assumeyes; zenity --info --title='$L_INSTALLED1 AnyDesk' --text='$L_COMPLETED'"  
    ;;
  4)
    gnome-terminal --title="$L_INSTALLING NoMachine" -- bash -c "sudo apt install nomachine -y; zenity --info --title='$L_INSTALLED1 NoMachine' --text='$L_COMPLETED'"  
    ;;
esac
