#! /usr/bin/bash

apt-get install -y \
 	python3-dev python3-pip python3-setuptools \
 	python-dev python-pip python-setuptools \
	tree curl fzf tig

snap install docker
snap install kubectl --classic
snap install helm --classic
snap install ruby --classic
snap install go --classic
snap install node --edge --classic

npm install diff-so-fancy -g
