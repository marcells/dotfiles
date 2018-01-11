#!/bin/sh

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /tmp/microsoft.gpg
sudo mv -f /tmp/microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
rm /tmp/microsoft.gpg

sudo sh -c "echo \"deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-`lsb_release -sc`-prod `lsb_release -sc` main\" > /etc/apt/sources.list.d/dotnetdev.list"

sudo apt-get update
sudo apt-get install -y dotnet-sdk-2.1.4