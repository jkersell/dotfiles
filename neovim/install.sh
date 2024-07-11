#!/bin/bash

nvim_config_dir="$HOME"/.config/nvim

cp --verbose .vimrc "$HOME"/.vimrc
cp --verbose init.vim "$nvim_config_dir"/init.vim
cp --verbose scripts.vim "$nvim_config_dir"/scripts.vim
cp --recursive --verbose --no-target-directory lua "$nvim_config_dir"/lua

# Set up a virtual environment to install pynvim in
pynvim_venv="$HOME"/.pynvim
python3 -m venv "$pynvim_venv"
"$pynvim_venv"/bin/python3 -m pip install --upgrade pynvim
