#!/bin/sh

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install -y build-essential


if test ! $(which grunt)
then
  sudo npm install grunt -g
fi
