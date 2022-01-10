#!/bin/sh
SHARPOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Install IDE" \
--text="Choose your prefered IDE or Code Editor" \
--column="ID" --column="Name" --column="Description" --hide-column 1 \
1 "GNOME Builder" "IDE for building GUI GNOME/UFlinux native apps" \
2 "Visual Studio CODE" "Code Editor from Microsoft" \
3 "Codium" "Open source VS Code" \
4 "Mono Develop" "IDE for Linux C# Development" \
5 "Atom" "Electron based Code editor" \
6 "Eclipse" "Advanced Linux IDE" \
7 "Android Studio" "IDE for Android app development" \
8 "Arduino IDE" "IDE for Arduino" \
9 "NetBeans" "Easy IDE for Java, JS, PHP and C/C++" \
10 "QT Creator" "IDE for GUI app development with QT" \
)

case $SHARPOPTION in

  1)
    gnome-terminal --title="Installing GNOME Builder" -- bash -c "flatpak install org.gnome.Builder --assumeyes; zenity --info --title='Install GNOME Builder' --text='Task is completed'" 
    ;;

  2)
    gnome-terminal --title="Installing VS Code" -- bash -c "flatpak install com.visualstudio.code --assumeyes; zenity --info --title='Install VS Code' --text='Task is completed'"  
    ;;
  3)
    gnome-terminal --title="Installing Codium" -- bash -c "flatpak install com.vscodium.codium --assumeyes; zenity --info --title='Install Codium' --text='Task is completed'"  
    ;;
  4)
    gnome-terminal --title="Installing Mono Develop" -- bash -c "sudo mkdir /usr/lib/gnome-terminal; sudo ln -s /usr/libexec/gnome-terminal-server /usr/lib/gnome-terminal; sudo apt install monodevelop -y; zenity --info --title='Install Mono Develop' --text='Task is completed'"  
    ;;
  5)
    gnome-terminal --title="Installing Atom" -- bash -c "flatpak install io.atom.Atom --assumeyes; zenity --info --title='Install Atom' --text='Task is completed'"  
    ;;
  6)
    gnome-terminal --title="Installing Eclipse" -- bash -c "flatpak install org.eclipse.Java --assumeyes; zenity --info --title='Install Eclipse' --text='Task is completed'"
    ;; 
  7)
    gnome-terminal --title="Installing Android Studio" -- bash -c "flatpak install com.google.AndroidStudio --assumeyes; zenity --info --title='Install Android Studio' --text='Task is completed'"
    ;;
  8)
    gnome-terminal --title="Installing Arduino IDE" -- bash -c "flatpak install cc.arduino.arduinoide --assumeyes; zenity --info --title='Install Arduino IDE' --text='Task is completed'"
    ;;
  9)
    gnome-terminal --title="Installing NetBeans" -- bash -c "flatpak install org.apache.netbeans --assumeyes; zenity --info --title='Install NetBeans' --text='Task is completed'"
    ;;
  9)
    gnome-terminal --title="Installing QT Creator" -- bash -c "flatpak install io.qt.QtCreator --assumeyes; zenity --info --title='Install QT Creator' --text='Task is completed'"
    ;;
esac
