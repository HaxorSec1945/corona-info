#!/bin/bash
# Corona Info 2020
# Copyright By Mrcakil

okegreen='\033[92m'
yellow='\e[1;33m'
red='\e[1;31m'

echo -e $okegreen "Corona Info 2020"
echo -e $okegreen "by Mrcakil"
echo ""

ngecurl=$(curl -s --insecure https://api.kawalcorona.com |jq -r ".[36] .attributes" > corona.json)
neg=$(cat corona.json | jq ".Country_Region")
confirm=$(cat corona.json | jq ".Confirmed")
meninggal=$(cat corona.json | jq ".Deaths")
sembuh=$(cat corona.json | jq ".Recovered")
rawat=$(cat corona.json | jq ".Active")


echo -e $okegreen "Negara : $neg"
echo -e $okegreen "Terkonfirmasi : $confirm"
echo -e $red "Meninggal : $meninggal"
echo -e $okegreen "Sembuh : $sembuh"
echo -e $yellow "Dalam Perawatan : $rawat"

rm -rf corona.json