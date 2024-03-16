#!/bin/bash
#
#
#!/bin/bash
#

IFACES=$(nmcli d|grep wifi)
WLAN=$(yad --geometry=250x300+200+800 --borders=20 --separator="," --form --text-align=center --field=":TXT" --field="Internet Connected Interface:": \
"$IFACES"|csvtool col 2 -)

export WLAN=$WLAN
cat FILE/hostapd.conf|sed s/ZZ/$WLAN/g|tee PRJ/hostapd.conf
