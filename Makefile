.PHONY: packages
packages:
	./install.sh

.PHONY: init
init:
	@sudo apt update
	@mkdir $(HOME)/bin

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
	@curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@pip install pynvim --upgrade
	@pip3 install pynvim --upgrade
	@sudo apt install neovim -y
	# doesnt work
	@sudo gem install neovim 
	@sudo npm install -g neovim

COMPDIR=$(pkg-config --variable=completionsdir bash-completion)
.PHONY: k8s
k8s:
	@git clone https://github.com/ahmetb/kubectx.git $(HOME)/git/kubectx
	@ln -snf $(HOME)/git/kubectx/kubectx $(HOME)/bin/kubectlx
	@ln -snf $(HOME)/git/kubectx/kubens $(HOME)/bin/kubens

pandoc:
	@firefox https://pandoc.org/installing.html

elixir:
	@git clone https://github.com/elixir-lsp/elixir-ls.git ~/.elixir-ls
	@wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
	@sudo apt update
	@sudo apt install esl-erlang elixir -y
