# dotfiles

## install bin/

```
make init
```

## run packages

```
make packages
```

## neovim

```
make neovim
```

Open neovim and do :PlugInstall

## run config

```
CURDIR=`pwd` make config
```

## run k8s

```
make k8s
```

## elixir

```
make elixir
cd ~/.elixir-ls
mix deps.get && mix compile && mix elixir_ls.release -o release
```
