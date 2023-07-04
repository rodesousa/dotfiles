.PHONY: packages
packages:
	./install.sh

.PHONY: init
init:
	@sudo apt update
	@mkdir $(HOME)/bin -p
	@sudo apt install -y curl
 	@ssh-keygen -t ed25519 -C "dessroberto@gmail.com"

.PHONY: config
config:
	@ln -snf $(CURDIR)/config/bashrc $(HOME)/.config/bashrc
	@ln -snf $(CURDIR)/.bashrc $(HOME)/.bashrc
	@ln -snf $(CURDIR)/.gitconfig $(HOME)/.gitconfig
	@ln -snf $(CURDIR)/config/git $(HOME)/.config/git
	@ln -snf $(CURDIR)/config/helper $(HOME)/.config/helper

.PHONY: neovim
neovim:
	@sudo add-apt-repository ppa:neovim-ppa/stable
	@curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@pip install pynvim --upgrade
	@pip3 install pynvim --upgrade
	@sudo apt install neovim -y
	@sudo apt install ruby-rubygems ruby-dev -y
	@sudo gem install neovim 
	@sudo npm install -g neovim
	@sudo apt install ripgrep

COMPDIR=$(pkg-config --variable=completionsdir bash-completion)
.PHONY: k8s
k8s:
	@git clone https://github.com/ahmetb/kubectx.git $(HOME)/git/kubectx
	@ln -snf $(HOME)/git/kubectx/kubectx $(HOME)/bin/kubectlx
	@ln -snf $(HOME)/git/kubectx/kubens $(HOME)/bin/kubens

pandoc:
	@firefox https://pandoc.org/installing.html

elixir:
	@asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git 
	@asdf install elixir latest
	@asdf global elixir latest

coc-elixir:
	@git clone https://github.com/elixir-lsp/elixir-ls.git ~/.elixir-ls

coc-elixir-update:
	@cd ~/.elixir-ls && mix deps.get && mix compile && mix elixir_ls.release -o release

erlang:
	@asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
	@sudo apt-get -y install build-essential autoconf m4 libncurses5-dev libssh-dev xsltproc fop libncursesw5-dev
	@asdf install erlang 25.1.2
	@asdf global erlang 25.1.2

all: init packages neovim config pandoc erlang elixir

chrome:
	@echo "https://doc.ubuntu-fr.org/google_chrome"
	@sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
	@wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	@sudo apt-get update
	@sudo apt-get install google-chrome-stable

camera-dell:
	@echo "https://www.dell.com/support/kbdoc/fr-fr/000203831/la-webcam-n-est-pas-detectee-sur-les-ordinateurs-portables-xps-13-plus-9320-fonctionnant-sous-ubuntu-22-04"

spotify:
	@curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
	@echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
	@sudo apt-get update  
	@sudo apt-get install spotify-client
