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
--title="$L_NVNAME" \
--column="ID" --column="$L_NAME" --column="$L_DESCRIPTION" --hide-column 1 \
1 "NVIDIA driver" "$L_NVDESC1" \
2 "Legacy driver" "$L_NVDESC2" \
3 "Hybrid driver" "$L_NVDESC3" \
)

case $STEAMOPTION in
  1)
    gnome-terminal --title="$L_INSTALLING NVIDIA driver" -- bash -c "sudo apt install uf-nvidiameta; zenity --info --title='$L_INSTALLED1 NVIDIA driver' --text='$L_COMPLETEDRESTART'"  
    ;;
  2)
    gnome-terminal --title="$L_INSTALLING Legacy driver" -- bash -c "sudo apt install -y nvidia-legacy-390xx-driver firmware-misc-nonfree; zenity --info --title='$L_INSTALLED1 Legacy driver' --text='$L_COMPLETEDRESTART'"  
    ;;
  3)
    gnome-terminal --title="$L_INSTALLING Hybrid driver" -- bash -c "sudo apt install nvidia-driver firmware-misc-nonfree switcheroo-control bumblebee bumblebee-nvidia -y; zenity --info --title='$L_INSTALLED1 Optimus driver' --text='$L_COMPLETEDRESTART'"
    ;;
esac
