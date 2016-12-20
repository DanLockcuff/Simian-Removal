#!/bin/bash

#pull logged in user
userName=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`

sudo rm -rf /usr/local/munki
echo "munki folder removed"

sudo rm -rf /etc/simian
echo "simian folder removed"

sudo rm -rf /Library/Managed\ Installs
echo "Managed Installs removed"

sudo rm -rf /Library/Preferences/ManagedInstalls.plist
echo "Plist Removed"

sudo rm -rf /private/var/root/Library/Preferences/ManagedInstalls.*
echo "managed install preferences removed"

sudo rm -rf /private/var/root/Library/Preferences/ByHost/ManagedInstalls.*
echo "remove more shit"

sudo rm -rf /private/etc/simian
echo "cached simian folder removed"

sudo rm -rf /usr/local/bin/simianfacter
echo "simian facter removed"

sudo rm -rf /Users/$userName/.python-eggs/simian*
echo "python-eggs removed"

sudo rm -rf /private/var/db/receipts/com.google.code.simian*
echo "simian receipt removed"

sudo rm -rf /Applications/Managed Software Center.app
echo "Managed Software App Removed"

echo "Simian Removal Complete"

exit 0