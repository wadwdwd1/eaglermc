#!/bin/bash
echo starting...
wget https://gitlab.com/potato1234/mc-2/-/archive/main/mc-2-main.zip
unzip mc-2-main.zip
cd bungee

MTOD="${MTOD:-'wadmc.site'}"

sed -i 's/${SERVER}/'"$SERVER"'/g' config.yml

cd plugins
cd EaglercraftXBungee

sed -i 's/${MTOD}/'"$MTOD"'/g' listeners.yml

cd /
cd bungee

java -Xmx1024M -Xms1024M -jar bungee.jar
