#! /usr/bin/bash

# elixir
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

sudo apt update

sudo apt-get install -y \
	python3-dev python3-pip python3-setuptools \
	python-dev python-pip python-setuptools \
	tree curl fzf tig silversearcher-ag \
	apt-transport-https ca-certificates gnupg-agent software-properties-common \
	elixir esl-erlang inotify-tools ctags terminator thefuck \
  ruby-full gem

pip3 install thefuck

sudo snap install docker
sudo snap install kubectl --classic
sudo snap install helm --classic
sudo snap install go --classic
sudo snap install node --edge --classic

sudo npm install diff-so-fancy -g

# docker
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker

# config git
git config --global user.email "dessroberto.gmail.com"
git config --global user.name "Roberto De Sousa"

# never SUDO !
mkdir $HOME/bin
