#!/bin/bash

# XXX: Originally I was managing configuration and packages on an Ubuntu machine
# so some packages have been tested on Ubuntu, others not. It may be necessary
# to create platform specific lists of packages in the future.
PACKAGES=(
    xsel # nvim can use tmux as a clipboard provider, so xsel is only required
         #  if tmux is not available
    gopls
    lua-language-server
)

source /etc/os-release

case ${ID} in
    ubuntu) apt-get install "${PACKAGES[@]}";;
    manjaro) pamac install "${PACKAGES[@]}";;
esac
