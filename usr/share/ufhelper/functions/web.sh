#!/bin/sh
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
KERNEL=$(zenity --list \
--width=500 --height=300 \
--title="$L_WEBNAME" \
--text="$L_WEBTEXT" \
--column="ID" --column="$L_NAME" --column="$L_DESCRIPTION"  --hide-column 1 \
1 "Chromium" "$L_WEBDESC1" \
2 "Firefox" "$L_WEBDESC2" \
3 "Brave" "$L_WEBDESC3" \
4 "LibreWolf" "$L_WEBDESC4" \
5 "Opera" "$L_WEBDESC5" \
6 "Vivaldi" "$L_WEBDESC6"
)
case $KERNEL in

  1)
    gnome-terminal --title="$L_INSTALLING Chromium" -- bash -c "flatpak install org.chromium.Chromium --assumeyes; zenity --info --title='$L_INSTALLED1 Chromium' --text='$L_COMPLETED'" 
    ;;

  2)
    gnome-terminal --title="$L_INSTALLING Firefox" -- bash -c "flatpak install org.mozilla.firefox --assumeyes; zenity --info --title='$L_INSTALLED1 Firefox' --text='$L_COMPLETED'"  
    ;;

  3)
    gnome-terminal --title="$L_INSTALLING Brave" -- bash -c "sudo apt install brave-browser -y; zenity --info --title='Install Brave' --text='$L_COMPLETED'"
    ;;

  4)
    gnome-terminal --title="$L_INSTALLING LibreWolf" -- bash -c "flatpak install io.gitlab.librewolf-community --assumeyes; zenity --info --title='$L_INSTALLED1 LibreWolf' --text='$L_COMPLETED'"  
    ;;
  5)
    gnome-terminal --title="$L_INSTALLING Opera" -- bash -c "sudo apt install opera-stable -y; zenity --info --title='$L_INSTALLED1 Opera' --text='$L_COMPLETED'" 
    ;;
  6)
    gnome-terminal --title="$L_INSTALLING Vivaldi" -- bash -c "sudo apt install vivaldi-stable -y; zenity --info --title='$L_INSTALLED1 Vivaldi' --text='$L_COMPLETED'"
  ;;
esac
