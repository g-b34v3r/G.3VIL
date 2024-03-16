#!/bin/bash
#
#
#!/bin/bash
#

IFACES=$(nmcli d|grep wifi)
WMON=$(yad --geometry=250x300+200+800 --borders=20 --separator="," --form --text-align=center --field=":TXT" --field="MONITOR MODE Interface:": \
"$IFACES"|csvtool col 2 -)
echo $WMON
export WMON=$WMON
