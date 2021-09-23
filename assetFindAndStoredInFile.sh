#!/bin/bash
url=$1

if [ ! -d "$url" ]; then
    mkdir $url
fi

if [ ! -d "$url" ]; then
    mkdir $url
fi

echo "[+] Harvesting the subdomain with the asset finder ..........."
assetfinder $url >> $url/asset.txt
cat $url/asset.txt | grep $1 >> $url/final.txt
rm $url/asset.txt
