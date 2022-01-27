#!/bin/bash
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
gnome-terminal --title="$L_INSTALLING Piper" -- bash -c "sudo apt install piper -y; zenity --info --title='$L_INSTALLED1 Piper' --text='$L_COMPLETED'"  
