.PHONY: packages
packages:
	@sudo ./install.sh
	@pip3 install thefuck
	@mkdir $(HOME)/bin

.PHONY: config
config:
	@ln -snf $(CURDIR)/config/bashrc $(HOME)/.config/bashrc
	@ln -snf $(CURDIR)/.bashrc $(HOME)/.bashrc
	@ln -snf $(CURDIR)/.gitconfig $(HOME)/.gitconfig
	@ln -snf $(CURDIR)/config/nvim $(HOME)/.config/nvim
	@ln -snf $(CURDIR)/config/terminator $(HOME)/.config
	@ln -snf $(CURDIR)/config/git $(HOME)/.config/git

neovim:
	@curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@pip install pynvim --upgrade
	@pip3 install pynvim --upgrade
	@sudo apt install neovim -y
	@gem install neovim
	@sudo npm install -g neovim

golang:
	@mkdir $(HOME)/go
	@sudo apt-get install go-dep -y

COMPDIR=$(pkg-config --variable=completionsdir bash-completion)
k8s:
	@git clone https://github.com/ahmetb/kubectx.git $(HOME)/git/kubectx
	@ln -snf $(HOME)/git/kubectx/kubectx $(HOME)/bin/kubectlx
	@ln -snf $(HOME)/git/kubectx/kubens $(HOME)/bin/kubens
