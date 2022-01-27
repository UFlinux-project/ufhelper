#!/bin/bash
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
gnome-terminal --title="$L_INSTALLING OpenRGB" -- bash -c "flatpak install org.openrgb.OpenRGB --assumeyes; zenity --info --title='$L_INSTALLED1 OpenRGB' --text='$L_COMPLETED'"  

