#!/bin/sh
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
WINEOPTION=$(zenity --list \
--width=500 --height=300 \
--title="$L_WINENAME" \
--text="$L_WINETEXT" \
--column="ID" --column="$L_NAME"  --hide-column 1 \
1 "$L_WINEDESC1" \
2 "$L_WINEDESC2" \

)
case $WINEOPTION in

  1)
    gnome-terminal --title="$L_WINEDESC1" -- bash -c "sudo dpkg --add-architecture i386; sudo apt update; sudo apt install --install-recommends -y winehq-devel winetricks; zenity --info --title='$L_INSTALLED1  $L_WINENAME' --text='$L_COMPLETED'" 
    ;;

  2)
    gnome-terminal --title="$L_WINEDESC2" -- bash -c "sudo apt autoremove -y winehq-devel winetricks; zenity --info --title='$L_WINEDESC2' --text='$L_WINENAME'" 
    ;;

esac
