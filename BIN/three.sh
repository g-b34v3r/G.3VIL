#!/bin/bash
#
#  > Target > aireplay-ng : capture target's info, create list & select


WMON=$1

function SCAN {
xterm -e airodump-ng $WMON -n 500 -a --manufacturer -o csv -w .tmp/wanscan
csvtool col 14 .tmp/*.csv|sort -u|tee .tmp/aplist
}

SCAN

ESSID=$(yad --geometry=200x800+0+0 --list --radiolist --print-all --column="USE" --column='Access Point':TEXT < .tmp/aplist | grep TRUE|sed s/TRUE//g|sed 's/|//g')

echo $ESSID

cat .tmp/*.csv|grep $ESSID|csvtool col 14,1,4 -|tee .tmp/cfg.csv
