# Dotfiles

This repository contains my various configuration files and instructions on how to set
them up.

## Setup

The table below describes where each file should be copied or symlinked to.

| File     | Installed Location          |
| -------- | --------------------------- |
| .vimrc   | ~/.vimrc                    |
| init.vim | ~/.config/nvim/init.vim     |
| init.lua | ~/.config/nvim/lua/init.lua |
| plugins/ | ~/.config/nvim/lua/plugins/ |

In addition to the above mappings, I also symlink the following Vim configuration
locations to the corresponding Neovim locations:

| Vim Location             | Neovim Location           |
| ------------------------ | ------------------------- |
|~/.vim/pack/plugins/start | ~/.local/share/nvim/lazy/
