#!/bin/bash

nvim_config_dir="$HOME"/.config/nvim

cp --verbose .vimrc "$HOME"/.vimrc
cp --verbose init.vim "$nvim_config_dir"/init.vim
cp --verbose scripts.vim "$nvim_config_dir"/scripts.vim
cp --recursive --verbose --no-target-directory lua "$nvim_config_dir"/lua
