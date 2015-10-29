echo "If you would like to uninstall Android Studio, all of its projects, all gradle files, all simulators, and SDK tools, type '1'. If you would like to uninstall just Android Studio, type '2'. To cancel, type '3'."
read option
echo "You chose option $option"
if ["$option" == "1"]; then
	`rm -Rf /Applications/Android\ Studio.app`
	`rm -Rf ~/Library/Preferences/AndroidStudio*`
	`rm ~/Library/Preferences/com.google.android.studio.plist`
	`rm -Rf ~/Library/Application\ Support/AndroidStudio*`
	`rm -Rf ~/Library/Logs/AndroidStudio*`
	`rm -Rf ~/Library/Caches/AndroidStudio*`
	`rm -Rf ~/AndroidStudioProjects`
	`rm -Rf ~/.gradle`
	`rm -Rf ~/.android`
	`rm -Rf ~/Library/Android*`
	echo "Uninstalled everything related to Android Development on your Mac!"
elif ["$option" == "2"]; then
	`rm -Rf /Applications/Android\ Studio.app`
	`rm -Rf ~/Library/Preferences/AndroidStudio*`
	`rm ~/Library/Preferences/com.google.android.studio.plist`
	`rm -Rf ~/Library/Application\ Support/AndroidStudio*`
	`rm -Rf ~/Library/Logs/AndroidStudio*`
	`rm -Rf ~/Library/Caches/AndroidStudio*`
	echo "Uninstalled everything related to Android Studio, but not Android Development!"
elif ["$option" == "3"]; then
	echo "Bye, bye!"
	exit 0
else
	echo "Bye, bye!"
	exit 0
fi