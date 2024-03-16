#!/bin/bash
#
#

#rm -rf .tmp/* PRJ/hostapd.conf
WLAN=$(BIN/one.sh)
WMON=$(BIN/two.sh)
TARGET=$(BIN/three.sh $WMON)
ATTACK=$(BIN/four.sh .tmp/cfg.csv)

