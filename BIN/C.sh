#!/bin/bash
#
#
echo $ESSID
echo $BSSID
echo $CHN

echo >> PRJ/hostapd.conf ssid=$ESSID

echo >> PRJ/hostapd.conf channel=$CHN
cat PRJ/hostapd.conf|sed s/\ \//g

cp FILE/dnsmasq.conf PRJ/
echo >> PRJ/dnsmasq.conf interface=$WLAN
