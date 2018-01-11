#!/bin/sh

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

sudo sh -c "echo \"deb http://linux.dropbox.com/ubuntu xenial main\" > /etc/apt/sources.list.d/dropbox.list"

sudo apt-get update
sudo apt-get install -y dropbox