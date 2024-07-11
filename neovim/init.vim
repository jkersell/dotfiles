set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

let g:python3_host_prog = "$HOME/.pynvim/bin/python"

source ~/.vimrc

lua require("init")
