#!/bin/sh
JAVAOPTION=$(zenity --list \
--width=500 --height=300 \
--title="Manage Java" \
--text="Choose your JDK" \
--column="ID" --column="Name" --column="Description" --hide-column 1 \
1 "Corretto OpenJDK 17" "Recommended option that is default for UFlinux (OpenJDK from Amazon)" \
2 "Corretto OpenJDK 11" "Older version for compatibility with older apps (OpenJDK from Amazon)" \
3 "Corretto OpenJDK 8" "Older version for legacy apps (OpenJDK from Amazon)" \
4 "Semeru OpenJDK 17 (OpenJ9)" "OpenJDK from IBM with Openj9 jvm" \
5 "GraalVM 21 (OpenJDK 17)" "Experimental high performance jvm" \
)

case $JAVAOPTION in

  1)
    gnome-terminal --title="Installing Corretto 17" -- bash -c "sudo apt install -y java-17-amazon-corretto-jdk; zenity --info --title='Install Corretto 17' --text='Task is completed'" 
    ;;

  2)
    gnome-terminal --title="Installing Corretto 11" -- bash -c "sudo apt install -y java-11-amazon-corretto-jdk; zenity --info --title='Install Corretto 11' --text='Task is completed'"  
    ;;
  3)
    gnome-terminal --title="Installing Corretto 8" -- bash -c "sudo apt install -y java-1.8.0-amazon-corretto-jdk; zenity --info --title='Install Corretto 8' --text='Task is completed'"  
    ;;
  4)
    gnome-terminal --title="Installing Semeru 17" -- bash -c "sudo apt install -y uf-java-semeru-17; zenity --info --title='Install Semeru 17' --text='Task is completed'"  
    ;;
  5)
    gnome-terminal --title="Installing GraalVM 21" -- bash -c "sudo apt install -y uf-java-graalvm-17; zenity --info --title='Install GraalVM 21' --text='Task is completed'"
    ;;
esac
