.PHONY: packages
packages:
	./install.sh

.PHONY: init
init:
	@sudo apt update
	@mkdir $(HOME)/bin -p
	@sudo apt install -y curl git make terminator

.PHONY: config
config:
	@ln -snf $(CURDIR)/config/bashrc $(HOME)/.config/bashrc
	@ln -snf $(CURDIR)/.bashrc $(HOME)/.bashrc
	@ln -snf $(CURDIR)/.gitconfig $(HOME)/.gitconfig
	@ln -snf $(CURDIR)/config/nvim $(HOME)/.config/nvim
	@ln -snf $(CURDIR)/config/terminator $(HOME)/.config
	@ln -snf $(CURDIR)/config/git $(HOME)/.config/git
	@ln -snf $(CURDIR)/config/helper $(HOME)/.config/helper

.PHONY: neovim
neovim:
	@sudo add-apt-repository ppa:neovim-ppa/stable
	@curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@pip install pynvim --upgrade
	@pip3 install pynvim --upgrade
	@sudo apt install neovim -y
	# doesnt work
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

erlang:
	xsltproc fop
	@sudo apt-get -y install build-essential autoconf m4 libncurses5-dev libssh-dev xsltproc fop libncursesw5-dev
	@asdf install erlang 25.1.2
	@asdf global erlang 25.1.2

old-erlang:
	@sudo wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb
	@sudo dpkg -i erlang-solutions_2.0_all.deb
	@sudo apt update
	@sudo apt install esl-erlang -y
	@echo "Checks if" 
	@echo "deb http://binaries.erlang-solutions.com/debian focal contrib" 
	@echo "exist in /etc/apt/sources.list.d/erlang-solutions.list" 
	@echo "OTP 5"

all: init packages neovim config pandoc erlang elixir
