#!bin/bash

sudo apt update

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

## PYTHON 3.6.3

sudo apt install python3.6

## Node.js



## React



## VISUAL STUDIO CODE

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'



