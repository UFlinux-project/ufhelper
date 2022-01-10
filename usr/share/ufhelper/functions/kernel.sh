#!/bin/sh
. "locale/$LANG"
KERNEL=$(zenity --list \
--width=500 --height=300 \
--title="$L_KERNELNAME" \
--text="$L_TEXT1" \
--column="ID" --column="$L_NAME" --column="$L_DESCRIPTION"  --hide-column 1 \
1 "Linux Xanmod LTS" "$L_KERNELDESC1" \
2 "Linux Xanmod Latest" "$L_KERNELDESC2" \
3 "Linux Xanmod Real-time" "$L_KERNELDESC3" \
4 "Linux Xanmod TaskType" "$L_KERNELDESC4" \
5 "Debian kernel" "$L_KERNELDESC5" \
)
case $KERNEL in

  1)
    gnome-terminal --title="$L_INSTALLING Linux Xanmod LTS" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-xanmod-lts -y; zenity --info --title='$L_KERNELNAME' --text='$L_COMPLETED'" 
    ;;

  2)
    gnome-terminal --title="$L_INSTALLING Linux Xanmod Latest" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-xanmod -y; zenity --info --title='$L_KERNELNAME' --text='$L_COMPLETED'" 
    ;;

  3)
    gnome-terminal --title="$L_INSTALLING Linux Xanmod Real-time" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-xanmod-rt -y; zenity --info --title='$L_KERNELNAME' --text='$L_COMPLETED'" 
    ;;

  4)
    gnome-terminal --title="$L_INSTALLING Linux Xanmod TaskType" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-xanmod-tt -y; zenity --info --title='$L_KERNELNAME' --text='$L_COMPLETED'" 
    ;;
  5)
    gnome-terminal --title="$L_INSTALLING Debian kernel" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-image-amd64 -y; zenity --info --title='$L_KERNELNAME' --text='$L_COMPLETED'" 
    ;;
esac
