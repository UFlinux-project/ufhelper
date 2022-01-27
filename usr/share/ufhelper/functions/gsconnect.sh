#!/bin/sh
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
gnome-terminal --title="$L_INSTALLING GSConnect" -- bash -c "sudo apt install uf-gsconnect -y; gnome-extensions enable gsconnect@andyholmes.github.io; zenity --info --title='$L_INSTALLED1 $L_GSCONNECTNAME $L_INSTALLED2' --text='$L_COMPLETED \n $L_GSCONNECTPHONE'" 
