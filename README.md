# dotfiles

## Instattion

`make all`

Or:

- `make init`
- `make packages`
- `make neovim`
- `CURDIR=`pwd` make config`
- `make pandoc`
- `make erlang elixir`

## Post installation

- Open neovim and do :PlugInstall
- cd ~/.elixir-ls
- mix deps.get && mix compile && mix elixir_ls.release -o release
```
