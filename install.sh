#! /usr/bin/bash

# elixir
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

apt update

apt-get install -y \
	python3-dev python3-pip python3-setuptools \
	python-dev python-pip python-setuptools \
	tree curl fzf tig \
	apt-transport-https ca-certificates gnupg-agent software-properties-common \
	elixir esl-erlang

snap install docker
snap install kubectl --classic
snap install helm --classic
snap install ruby --classic
snap install go --classic
snap install node --edge --classic

npm install diff-so-fancy -g

# docker
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
