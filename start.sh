#!/bin/bash
echo starting...
cd serv

MTOD="${MTOD:-'wadmc.site'}"

sed -i 's/${SERVER}/'"$SERVER"'/g' config.yml

java -Xmx1024M -Xms1024M -jar bungee.jar

cd ..
cd serv2

java -Xmx1024M -Xms1024M -jar server.jar

