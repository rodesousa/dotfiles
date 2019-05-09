.PHONY: packages
packages:
	@sudo ./install.sh
	@pip3 install thefuck

.PHONY: config
config:
	@ln -snf $(CURDIR)/config/bashrc $(HOME)/.config/bashrc
	@ln -snf $(CURDIR)/.bashrc $(HOME)/.bashrc
	@ln -snf $(CURDIR)/.gitconfig $(HOME)/.gitconfig
	@ln -snf $(CURDIR)/config/nvim $(HOME)/.config/nvim
	@ln -snf $(CURDIR)/config/terminator $(HOME)/.config/ternimator
	@ln -snf $(CURDIR)/config/git $(HOME)/.config/git

neovim:
	@curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@pip install pynvim --upgrade
	@pip3 install pynvim --upgrade
	@sudo apt install neovim -y
	@gem install neovim
	@sudo npm install -g neovim
