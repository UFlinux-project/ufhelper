#!/bin/bash
STEAMOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Choose your Virtualization platform" \
--column="ID" --column="Tech" --column="Name" --column="Description" --hide-column 1 \
1 "KVM" "Open GNOME Boxes" "Default UFLinux tool for managing VMs" \
2 "KVM" "Virt Manager" "Advanced tool for KVM VM managment" \
3 "Vbox" "VirtualBox" "Well known virtualization tool" \
)

case $STEAMOPTION in
  1)
    flatpak run org.gnome.Boxes
    ;;
  2)
    gnome-terminal --title="Installing Virt Manager" -- bash -c "sudo apt install -y virt-manager virt-viewer; zenity --info --title='Install Virt Manager' --text='Task is completed'"  
    ;;
  3)
    gnome-terminal --title="Installing VirtualBox" -- bash -c "sudo apt install virtualbox-6.1 -y; zenity --info --title='Install VirtualBox' --text='Task is completed'"  
    ;;
esac
