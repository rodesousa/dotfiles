#! /usr/bin/bash

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt install curl -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo add-apt-repository ppa:neovim-ppa/stable

sudo apt update

sudo apt-get install -y \
	python3-dev python3-pip python3-setuptools \
	tree fzf fd-find tig silversearcher-ag \
	apt-transport-https ca-certificates gnupg-agent software-properties-common \
	elixir inotify-tools exuberant-ctags terminator thefuck erlang \
  ruby-full gem jq \
  docker-ce docker-ce-cli containerd.io \
  gimp \
  npm

sudo npm install -g npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

pip3 install thefuck

sudo snap install postman
sudo snap install kubectl --classic
sudo snap install go --classic

sudo npm install diff-so-fancy -g

# docker
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo chmod 666 /var/run/docker.sock

# config git
git config --global user.email "dessroberto.gmail.com"
git config --global user.name "Roberto De Sousa"
