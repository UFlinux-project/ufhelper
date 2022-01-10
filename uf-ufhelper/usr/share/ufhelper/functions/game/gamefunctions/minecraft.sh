#!/bin/bash
STEAMOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Install Minecraft" \
--text="Choose Launcher" \
--column="ID" --column="Name" --column="Description" --hide-column 1 \
1 "Official Launcher" "Default Minecraft launcher for Java edition" \
2 "MultiMC Launcher" "Alternative launcher with advanced functionality (useful for modpacks)" \
3 "GDLauncher" "Another alternative launcher" \
4 "Minecraft: Pi Edition" "Simpler edition of Minecraft for SBC" \
5 "Allow Native JDKs" "Allows Official launcher to access to system JDKs" \
6 "Install alternative JDK" "Install older or newer java version (only official and MultiMC)"
)

case $STEAMOPTION in

  1)
    gnome-terminal --title="Installing Official Launcher" -- bash -c "sudo flatpak install com.mojang.Minecraft --assumeyes; zenity --info --title='Install Official Launcher' --text='Task is completed'" 
    ;;

  2)
    gnome-terminal --title="Installing MultiMC" -- bash -c "sudo apt install multimc -y; zenity --info --title='Install MultiMC' --text='Task is completed'"  
    ;;
  3)
    gnome-terminal --title="Installing GDLauncher" -- bash -c "flatpak install io.gdevs.GDLauncher --assumeyes; zenity --info --title='Install GDLauncher' --text='Task is completed'"  
    ;;
  4)
    gnome-terminal --title="Installing Minecraft: Pi Edition" -- bash -c "flatpak install com.thebrokenrail.MCPIReborn --assumeyes; zenity --info --title='Install Minecraft: Pi Edition' --text='Task is completed'"  
    ;;
  5)
	pkexec flatpak override com.mojang.Minecraft --filesystem=/usr/lib/jvm/
	zenity --width=200 --height=80 --info --title="Native JDKs" --text="Task is completed \n Native JDKs should be now accessible by Minecraft \n you can find them in \n /usr/lib/jvm/ directory"

    ;;
  6)
  sh functions/developer/developerfunctions/java.sh
  ;;
esac
