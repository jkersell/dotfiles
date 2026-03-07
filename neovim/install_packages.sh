#!/bin/bash

# nvim can use tmux as a clipboard provider, so xsel
# is only required if tmux is not available
apt-get install \
    xsel;
