#!/bin/sh
. "locale/$LANG"
gnome-terminal --title="$L_INSTALLING GSConnect" -- bash -c "sudo apt install uf-gsconnect -y; gnome-extensions enable gsconnect@andyholmes.github.io; zenity --info --title='$L_INSTALLED1 $L_GSCONNECTNAME $L_INSTALLED2' --text='$L_COMPLETED \n $L_GSCONNECTPHONE'" 
