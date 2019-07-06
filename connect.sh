#!/usr/bin/env bash
SSID=$(nmcli device wifi list | dmenu -l 7 | awk '{print $1}')
echo Password:
read PASS
if [ -z "$PASS" ]
then
	nmcli device wifi connect "$SSID"
else
	nmcli device wifi connect "$SSID" password $PASS
fi
