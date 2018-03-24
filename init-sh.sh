#!bin/bash

sudo apt update
sudo apt-get update

## .NET CORE 2.1.4

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'

sudo apt-get update
sudo apt-get install dotnet-sdk-2.1.4


## JAVA DEVELOPER KIT AND RUNTIME  - Open JDK 8

sudo apt-get install default-jdk

## GO LANG 1.10

sudo curl https://dl.google.com/go/go1.10.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.10.linux-amd64.tar.gz

sudo export PATH=$PATH:/usr/local/go/bin

## PYTHON 3.6.3 - with out making 3.6 default (altinstall)

sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev  libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

sudo apt-get update

cd /usr/src
sudo wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz

cd Python-3.6.4
sudo ./configure --enable-optimizations
sudo make altinstall


## Node.js - Including npm

curl --silent https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -

VERSION=node_8.10.0

DISTRO="$(lsb_release -s -c)"
echo "deb https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs


## React

## Docker

## SQLite

## VISUAL STUDIO CODE

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'



