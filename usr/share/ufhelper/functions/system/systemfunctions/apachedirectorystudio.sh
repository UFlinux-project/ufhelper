#!/bin/sh
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
gnome-terminal --title="$L_INSTALLING Apache Directory Studio" -- bash -c "sudo apt install uf-apachedirectorystudio -y; zenity --info --title='$L_INSTALLED1 Apache Directory Studio' --text='$L_COMPLETED'"  
