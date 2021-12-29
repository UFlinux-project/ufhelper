#!/bin/sh
SHARPOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Manage C#" \
--text="Choose your C# component" \
--column="ID" --column="Name" --column="Description" --hide-column 1 \
1 "Mono" "Multiplatform C# compiler" \
2 ".NET Core 6.0" "C# from Microsoft" \
)

case $SHARPOPTION in

  1)
    gnome-terminal --title="Installing Mono" -- bash -c "sudo apt install -y mono-complete; zenity --info --title='Install Mono' --text='Task is completed'" 
    ;;

  2)
    gnome-terminal --title="Installing .NET Core 6.0" -- bash -c "sudo wget 'https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb' -O /tmp/packages-microsoft-prod.deb; sudo dpkg -i /tmp/packages-microsoft-prod.deb; sudo apt-get update; sudo apt install -y dotnet-sdk-6.0; zenity --info --title='Install .NET Core 6.0' --text='Task is completed'"  
    ;;

esac
