#!/bin/sh
if [ -f "locale/$LANG" ]
then
. "locale/$LANG"
else
. "locale/en_US.UTF-8"
 echo "$LANG was not found, loading en_US.UTF-8"
fi
SHARPOPTION=$(zenity --list \
--width=500 --height=300 \
--title="$L_CSHARPNAME" \
--text="$L_CSHARPTEXT" \
--column="ID" --column="$L_NAME" --column="$L_DESCRIPTION" --hide-column 1 \
1 "Mono" "$L_CSHARPDESC1" \
2 ".NET Core 6.0" "$L_CSHARPDESC2" \
)

case $SHARPOPTION in

  1)
    gnome-terminal --title="$L_INSTALLING Mono" -- bash -c "sudo apt install -y mono-complete; zenity --info --title='$L_INSTALLED1 Mono $L_INSTALLED2' --text='$L_COMPLETED'" 
    ;;

  2)
    gnome-terminal --title="$L_INSTALLING .NET Core 6.0" -- bash -c "sudo wget 'https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb' -O /tmp/packages-microsoft-prod.deb; sudo dpkg -i /tmp/packages-microsoft-prod.deb; sudo apt-get update; sudo apt install -y dotnet-sdk-6.0; zenity --info --title='$L_INSTALLED1 .NET Core 6.0 $L_INSTALLED2' --text='$L_COMPLETED'"  
    ;;

esac
