#!/bin/bash
#
#  > Select page ETC/PORTALS > cp to /var/www/html
#


PORTAL=$(yad --geometry=100x100+1300+10 --form --field="Captive Portal":cb ARRIS_en.portal\!Belkin_en.portal\!NETGEAR_en.portal\!NETGEAR-Login_en.portal\!TP-LINK_en.portal\!Verizon_en.portal\!Xfinity-Login_en.portal)


echo >> .tmp/cfg.csv $PORTAL
cp -r ETC/PORTALS/$PORTAL/ /var/www/html/
