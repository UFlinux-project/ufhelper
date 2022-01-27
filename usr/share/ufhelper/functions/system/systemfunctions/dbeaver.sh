#!/bin/sh
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
gnome-terminal --title="$L_INSTALLING DBeaver" -- bash -c "flatpak install io.dbeaver.DBeaverCommunity --assumeyes; zenity --info --title='$L_INSTALLED1 DBeaver' --text='$L_COMPLETED'"  
