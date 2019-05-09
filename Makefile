package:
	./install.sh

.PHONY: config
config:
	ln -snf $(CURDIR)/config/bashrc $(HOME)/.config/bashrc
	ln -snf $(CURDIR)/.bashrc $(HOME)/.bashrc
	ln -snf $(CURDIR)/.gitconfig $(HOME)/.gitconfig
	ln -snf $(CURDIR)/.config/nvim $(HOME)/.config/nvim
	ln -snf $(CURDIR)/.config/terminator $(HOME)/.config/ternimator
