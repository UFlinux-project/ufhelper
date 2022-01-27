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
--title="$L_VIRTNAME" \
--column="ID" --column="$L_TECH" --column="$L_NAME" --column="$L_DESCRIPTION" --hide-column 1 \
1 "KVM" "GNOME Boxes" "$L_VIRTDESC1" \
2 "KVM" "Virt Manager" "$L_VIRTDESC2" \
3 "Vbox" "VirtualBox" "$L_VIRTDESC3" \
)

case $STEAMOPTION in
  1)
    flatpak run org.gnome.Boxes
    ;;
  2)
    gnome-terminal --title="$L_INSTALLING Virt Manager" -- bash -c "sudo apt install -y virt-manager virt-viewer; zenity --info --title='$L_INSTALLED1 Virt Manager' --text='$L_COMPLETED'"  
    ;;
  3)
    gnome-terminal --title="$L_INSTALLING VirtualBox" -- bash -c "sudo apt install virtualbox-6.1 -y; zenity --info --title='$L_INSTALLED1 VirtualBox' --text='$L_COMPLETED'"  
    ;;
esac
