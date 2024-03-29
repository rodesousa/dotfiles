#! /usr/bin/bash

echo "install python"
sudo apt-get install -y	python3-dev python3-pip python3-setuptools inotify-tools bat

echo "install common tools"
sudo apt-get install -y	tree fzf fd-find tig silversearcher-ag \
	apt-transport-https ca-certificates gnupg-agent software-properties-common \
	inotify-tools thefuck jq gimp inotify-tools ripgrep dirmngr gpg curl gawk \
	ruby-dev

echo "install thefuck"
pip3 install thefuck

echo "bat in loca/bin"
ln -s /usr/bin/batcat ~/$HOME/bin/bat 

echo "install docker"

sudo apt-get remove docker docker-engine docker.io containerd runc


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "add mozillavpn"
sudo add-apt-repository ppa:mozillacorp/mozillavpn

echo "apt update"
sudo apt-get update

echo "install docker"
sudo apt install -y docker-ce docker-ce-cli containerd.io

echo "install mozilla vpn"
sudo apt install mozillavpn -y

sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo chmod 666 /var/run/docker.sock

echo "git config"
git config --global user.email "dessroberto.gmail.com"
git config --global user.name "Roberto De Sousa"

echo "install tailscale"
curl -fsSL https://tailscale.com/install.sh | sh
