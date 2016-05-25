#!/bin/bash -x

# >>>> only tested on Ubuntu 14.04LTS <<<<

# Check out special branch until latest docker changes land in Boulder master.
git clone -b 71e4af43f792f33e6ab1aa87ddc23a6a368889f2 https://github.com/letsencrypt/boulder $BOULDERPATH
cd $BOULDERPATH
sed -i 's/FAKE_DNS: .*/FAKE_DNS: 172.17.42.1/' docker-compose.yml
docker-compose up -d
