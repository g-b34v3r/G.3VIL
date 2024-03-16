#!/bin/bash
#
#

CFG=$1
ESSID=$(csvtool col 1 $CFG)
BSSID=$(csvtool col 2 $CFG)
CHN=$(csvtool col 3 $CFG)
res1=".tmp/1.tmp"
res2=".tmp/2.tmp"
res3=".tmp/3.tmp"

echo $ESSID $BSSID $CHN
export ESSID=$ESSID
export BSSID=$BSSID
export CHN=$CHN

yad --plug=$$ --tabnum=1 --form --columns=1 --align=center \
--field="TARGET ::LBL" --field="ESSID" --field="BSSID" --field="CHANNEL" \
"" "$ESSID" "$BSSID" "$CHN" &> "$res1" &


yad --plug=$$ --tabnum=2 --align=center --text="CONFIG Options" --form --field="Captive Portal":fbtn BIN/B.sh --field="MySql DB":fbtn BIN/A.sh --field="Files":fbtn BIN/C.sh &> "$res2" &


yad --plug=$$ --tabnum=3 --align=center --text="ATTACK Options" --form --field="Start Access-Point":fbtn BIN/F.sh --field="Monitor Target":fbtn BIN/D.sh --field="DeAuth":fbtn BIN/E.sh &> "$res3" &



yad --notebook --key=$$ --tab="Target" --tab="Config Menu" --tab="Attack Menu"  --orient=hor --splitter=450 --title="3VIL AP" --geometry=900x300+400+5 --borders=30


#yad --plug=$$ --tabnum=2 --align=center --text="ATTACK Options" --form --field="DeAuth":fbtn BIN/D.sh | \




