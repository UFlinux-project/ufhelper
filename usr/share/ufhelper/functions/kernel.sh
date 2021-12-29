#!/bin/sh
KERNEL=$(zenity --list \
--width=500 --height=300 \
--title="Change Linux Kernel" \
--text="UFlinux is using linux-xanmod-lts by default changing is not reccomended but if you need for example new feature in new kernel then you can use this tool to install newer kernel" \
--column="ID" --column="Status" --column="Name" --column="Description"  --hide-column 1 \
1 "Default" "Linux Xanmod LTS" "Tweaked lts release of Linux kernel by xanmod.org" \
2 " " "Linux Xanmod Latest" "Latest stable xanmod kernel" \
3 " " "Linux Xanmod Real-time" "Real-time xanmod kernel, useful for latency sensitive applications like streaming" \
4 "EXP" "Linux Xanmod TaskType" "Xanmod kernel with TaskType CPU scheduler" \
5 " " "Debian default kernel" "Kernel from debian project" \
)
case $KERNEL in

  1)
    gnome-terminal --title="Installing Linux Xanmod LTS" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-xanmod-lts -y; zenity --info --title='Change Linux Kernel' --text='Task is completed'" 
    ;;

  2)
    gnome-terminal --title="Installing Linux Xanmod Latest" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-xanmod -y; zenity --info --title='Change Linux Kernel' --text='Task is completed'" 
    ;;

  3)
    gnome-terminal --title="Installing Linux Xanmod Real-time" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-xanmod-rt -y; zenity --info --title='Change Linux Kernel' --text='Task is completed'" 
    ;;

  4)
    gnome-terminal --title="Installing Linux Xanmod TaskType" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-xanmod-tt -y; zenity --info --title='Change Linux Kernel' --text='Task is completed'" 
    ;;
  5)
    gnome-terminal --title="Installing Debian default kernel" -- bash -c "sudo apt autoremove -y linux-xanmod* linux-image-amd64; sudo apt install linux-image-amd64 -y; zenity --info --title='Change Linux Kernel' --text='Task is completed'" 
    ;;
esac
