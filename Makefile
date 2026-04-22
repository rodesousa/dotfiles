mac-common-package:
	brew install tig

mise:
	mise use -g npm:typescript-language-server
	mise use -g node@22

common-package:
	sudo apt-get install -y	curl tree fzf fd-find tig silversearcher-ag apt-transport-https \
		ca-certificates gnupg-agent software-properties-common inotify-tools thefuck \
		jq gimp inotify-tools ripgrep dirmngr gpg curl gawk ruby-dev
	echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.bashrc

python:
	sudo apt-get install -y	python3-dev python3-pip python3-setuptools inotify-tools

mozilla-vpn:
	sudo add-apt-repository ppa:mozillacorp/mozillavpn
	sudo apt-get update
	sudo apt install mozillavpn -y

tailscale:
	curl -fsSL https://tailscale.com/install.sh | sh

docker:
	sudo apt-get remove docker docker-engine docker.io containerd runc
	sudo apt-get update
	sudo apt-get install ca-certificates curl
	sudo install -m 0755 -d /etc/apt/keyrings
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
	sudo chmod a+r /etc/apt/keyrings/docker.asc
	echo \
	  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
	  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
	  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt-get update
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
	sudo addgroup --system docker
	sudo adduser $USER docker
	newgrp docker
	sudo chmod 666 /var/run/docker.sock

git-config:
	ln -snf $(CURDIR)/.gitconfig $(HOME)/.gitconfig
	ln -snf $(CURDIR)/config/git $(HOME)/.config/git
	git config --global user.email "dessroberto.gmail.com"
	git config --global user.name "Roberto De Sousa"

git: git-config
	sudo add-apt-repository ppa:git-core/ppa
	sudo apt update
	sudo apt install -y git

mac-git: git-config
	brew install diff-so-fancy

kitty:
	curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
	mkdir -p ~/.local/bin/
	ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
	cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
	cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
	sed -i "s|Icon=kitty|Icon=$(HOME)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
	sed -i "s|Exec=kitty|Exec=$(HOME)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
	sed -i "s|TryExec=kitty|TryExec=$(HOME)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
	update-desktop-database ~/.local/share/applications/
	echo 'kitty.desktop' > ~/.config/xdg-terminals.list
	ln -snf $(CURDIR)/config/kitty $(HOME)/.config/kitty


packages:
	./install.sh

ubuntu-emoji:
	@sudo apt install fonts-noto-color-emoji

nvim-kickstart:
	sudo apt install make gcc ripgrep unzip git xclip 
	ln -snf $(CURDIR)/config/nvim $(HOME)/.config/nvim
	echo 'export PATH="/opt/nvim-linux-x86_64/bin:$$PATH"' >> $(HOME)/.bashrc

ssh:
	ssh-keygen -t ed25519 -C "dessroberto@gmail.com"

golang:
	rm -rf /usr/local/go
	wget https://go.dev/dl/go1.25.1.linux-amd64.tar.gz
	sudo tar -C /usr/local -xzf go1.25.1.linux-amd64.tar.gz
	echo 'export PATH=$$PATH:/usr/local/go/bin' >> $(HOME)/.bashrc
	echo 'export GOPATH="$$HOME/go"' >> $(HOME)/.bashrc
	echo 'export PATH="$$GOPATH/bin:$$PATH"' >> $(HOME)/.bashrc

asdf:
	go install github.com/asdf-vm/asdf/cmd/asdf@v0.18.0
	echo 'export PATH="$$HOME/.asdf/shims:$$PATH"' >> $(HOME)/.bashrc
	echo '. <(asdf completion bash)' >> $(HOME)/.bashrc

bashrc:
	@ln -snf $(CURDIR)/config/bashrc $(HOME)/.config/bashrc
	echo 'source ~/.config/bashrc/alias' >> $(HOME)/.bashrc

node:
	mkdir -p $(HOME)/.n
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	asdf install nodejs 20.18.0
	asdf set -u nodejs 20.18.0
	asdf reshim nodejs
	npm install -g npm
	npm cache clean -f
	npm install diff-so-fancy -g
	npm install -g typescript-language-server typescript 

COMPDIR=$(pkg-config --variable=completionsdir bash-completion)
.PHONY: k8s
k8s:
	@git clone https://github.com/ahmetb/kubectx.git $(HOME)/git/kubectx
	@ln -snf $(HOME)/git/kubectx/kubectx $(HOME)/bin/kubectlx
	@ln -snf $(HOME)/git/kubectx/kubens $(HOME)/bin/kubens

pandoc:
	@firefox https://pandoc.org/installing.html

elixir:
	asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git 
	asdf install elixir 1.18.4
	asdf set -u elixir 1.18.4
	asdf reshim elixir

coc-elixir:
	@git clone https://github.com/elixir-lsp/elixir-ls.git ~/.elixir-ls

coc-elixir-update:
	@cd ~/.elixir-ls && mix deps.get && mix compile && mix elixir_ls.release -o release

erlang:
	#asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
	#sudo apt-get -y install build-essential autoconf m4 libncurses5-dev libssh-dev xsltproc fop libncursesw5-dev
	asdf install erlang 25.1.2
	asdf set -u erlang 25.1.2
	asdf reshim erlang

chrome:
	@echo "https://doc.ubuntu-fr.org/google_chrome"
	@sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
	@wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	@sudo apt-get update
	@sudo apt-get install google-chrome-stable

camera-dell:
	@echo "https://www.dell.com/support/kbdoc/fr-fr/000203831/la-webcam-n-est-pas-detectee-sur-les-ordinateurs-portables-xps-13-plus-9320-fonctionnant-sous-ubuntu-22-04"

mac-nvim:
	brew install ripgrep
	ln -snf $(CURDIR)/config/nvim $(HOME)/.config/nvim

mac-zshrc:
	cat $(CURDIR)/.zshrc >> $(HOME)/.zshrc

# eval $(thefuck --alias)
