# dotfiles

all or 

- `make init`
- `make packages`
- `make neovim`

Open neovim and do :PlugInstall

## run config

```
CURDIR=`pwd` make config
```

## elixir

```
make elixir
cd ~/.elixir-ls
mix deps.get && mix compile && mix elixir_ls.release -o release
```
