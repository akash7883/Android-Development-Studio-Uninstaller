#!/bin/sh

echo "If you would like to uninstall Android Studio, all of its projects, all gradle files, all simulators, and SDK tools, type '1'. If you would like to uninstall just Android Studio, type '2'. To cancel, type '3'."
read option
echo "You chose option $option"
if [ "$option" == "1" ]; then
	`sudo rm -Rf /Applications/Android\ Studio.app`
	`sudo rm -Rf ~/Library/Preferences/AndroidStudio*`
	`sudo rm ~/Library/Preferences/com.google.android.studio.plist`
	`sudo rm -Rf ~/Library/Application\ Support/AndroidStudio*`
	`sudo rm -Rf ~/Library/Logs/AndroidStudio*`
	`sudo rm -Rf ~/Library/Caches/AndroidStudio*`
	`sudo rm -Rf ~/AndroidStudioProjects`
	`sudo rm -Rf ~/.gradle`
	`sudo rm -Rf ~/.android`
	`sudo rm -Rf ~/Library/Android*`
	echo "Uninstalled everything related to Android Development on your Mac!"
elif [ "$option" == "2" ]; then
	`sudo rm -Rf /Applications/Android\ Studio.app`
	`sudo rm -Rf ~/Library/Preferences/AndroidStudio*`
	`sudo rm ~/Library/Preferences/com.google.android.studio.plist`
	`sudo rm -Rf ~/Library/Application\ Support/AndroidStudio*`
	`sudo rm -Rf ~/Library/Logs/AndroidStudio*`
	`sudo rm -Rf ~/Library/Caches/AndroidStudio*`
	echo "Uninstalled everything related to Android Studio, but not Android Development!"
elif [ "$option" == "3" ]; then
	echo "Bye, bye!"
	exit 0
else
	echo "Bye, bye!"
	exit 0
fi