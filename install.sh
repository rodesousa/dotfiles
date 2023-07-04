#! /usr/bin/bash

echo "install python"
sudo apt-get install -y	python3-dev python3-pip python3-setuptools

echo "install common tools"
sudo apt-get install -y	tree fzf fd-find tig silversearcher-ag
	apt-transport-https ca-certificates gnupg-agent software-properties-common \
	inotify-tools thefuck jq gimp inotify-tools

pip3 install thefuck

echo "install asdf"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

echo "install docker"

sudo apt-get remove docker docker-engine docker.io containerd runc


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io \

sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo chmod 666 /var/run/docker.sock

echo "install npm"
mkdir $HOME/.n
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 14.17.0
asdf global nodejs 14.17.0
npm install -g npm
npm cache clean -f
npm install -g n
n stable
npm install diff-so-fancy -g

echo "git config"
git config --global user.email "dessroberto.gmail.com"
git config --global user.name "Roberto De Sousa"

echo "install tailscale"
curl -fsSL https://tailscale.com/install.sh | sh

echo "Kitty"
apt install kitty -y
