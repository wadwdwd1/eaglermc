#!/bin/bash
echo starting...
cd serv

MTOD="${MTOD:-'wadmc.site'}"

sed -i 's/${SERVER}/'"$SERVER"'/g' config.yml

cd plugins
cd EaglercraftXBungee

sed -i 's/${MTOD}/'"$MTOD"'/g' listeners.yml

cd /
cd bungee

java -Xmx1024M -Xms1024M -jar bungee.jar
