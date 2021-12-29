#!/bin/bash
STEAMOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Choose your driver" \
--column="ID" --column="Name" --column="Description" --hide-column 1 \
1 "NVIDIA driver" "NVIDIA driver for modern GPUs" \
2 "Legacy driver" "Legacy driver for NVIDIA 500 series (Fermi) and older" \
3 "Hybrid driver" "Tools and drivers for laptops with hybrid graphics" \
)

case $STEAMOPTION in
  1)
    gnome-terminal --title="Installing NVIDIA driver" -- bash -c "sudo apt install nvidia-driver firmware-misc-nonfree; zenity --info --title='Install NVIDIA driver' --text='Task is completed \n now please reboot'"  
    ;;
  2)
    gnome-terminal --title="Installing Legacy driver" -- bash -c "sudo apt install -y nvidia-legacy-390xx-driver firmware-misc-nonfree; zenity --info --title='Install Legacy driver' --text='Task is completed \n now please reboot'"  
    ;;
  3)
    gnome-terminal --title="Installing Optimus driver" -- bash -c "sudo apt install nvidia-driver firmware-misc-nonfree switcheroo-control bumblebee bumblebee-nvidia -y; zenity --info --title='Install Optimus driver' --text='Task is completed \n now please reboot'"
    ;;
esac
