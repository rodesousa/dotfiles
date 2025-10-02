# dotfiles

## Prerequisite

Makefile: sudo apt install make

```
make git common-package python
```

## Kitty

make kitty // marche pas

## BASHRC

```
make config
```

## NEOVIM

1.
```
make ubuntu-emoji
```

2. Follow https://github.com/neovim/neovim/blob/master/INSTALL.md

3. 
```
make nvim-kickstart
```

## docker

```
make docker
```

## ASDF

1. Check the last version of asdf: https://asdf-vm.com/guide/getting-started.html
2. Edit the makefile and set the last version
3. If go are not installed `make golang`
4.
```
make asdf
```
3. 

## Node

```
make node
```

## Elixir & Erlang

```
make erlang elixir
```

## More

- pandoc: make pandoc
- mozzila vpn: make mozilla-vpn
- tailscale: make tailscale
- create key ssh: make ssh
- chrome: make chrome
