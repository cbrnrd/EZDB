#!/bin/bash

set -e

if ! command -v crystal 2>/dev/null ; then
  echo -e "Installing crystal..."
  apt-key adv --keyserver keys.gnupg.net --recv-keys 09617FD37CC06B54
  echo "deb https://dist.crystal-lang.org/apt crystal main" > /etc/apt/sources.list.d/crystal.list
  apt-get update
  sudo apt-get install build-essential crystal
fi

git clone https://github.com/cbrnrd/ezdb
cd ezdb

echo -e "Building ezdb..."

make install

sudo cp bin/ezdb /usr/local/bin/ezdb
username=$(whoami)

sudo sed -i "s/root/$username/g" services/ezdb.service

sudo cp services/ezdb.service /lib/systemd/system/ezdb.service

sudo cp man/ezdb.1 /usr/local/share/man/man1/

echo -e "Starting ezdb service..."

service ezdb start
