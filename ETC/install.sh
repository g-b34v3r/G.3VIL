#!/bin/bash
#
#

XX='clear'
ZZ='sleep 2'



$XX;$ZZ
echo "Updating System Now....."
sudo apt-get install update -y
$XX;$ZZ
echo "System Updated...."
read -p "....Should We UPGRADE? [Y/N]" UPGRADE
if [ $UPGRADE == 'Y' ];
then
    #sudo apt-get upgrade -y
    echo "Ok!"
sudo apt-get install -y python3 python3-pip httprobe yad csvtool jq golang
python3 -m pip install --break-system-packages -r ETC/requirements.txt
$XX;$ZZ
echo "Now Installing Nuclei Scanner ...."
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest


fi

