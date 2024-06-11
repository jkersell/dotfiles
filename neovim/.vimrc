"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
filetype plugin indent on

let mapleader=","                       " reassign map leader from \ to ,

set wrap                                " wrap lines
set linebreak                           " only wrap lines according to breakat
set list                                " list disables linebreak
set textwidth=0                         " don't insert linebreaks in new text
set wrapmargin=0                        " don't insert linebreaks in new text
set autoindent                          " autoindenting is always on
set copyindent                          " copy the previous indentation on autoindenting
set number                              " turn on line numbering

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4
                                        " ts - show existing tab with 4 spaces width
                                        " sw - when indenting with '>', use 4 spaces width
                                        " sts - control <tab> and <bs> keys to match tabstop
set shiftwidth=4                        " sw for all other file types
set shiftround                          " use multiple of shiftwidth when
                                            " indenting with '<' and '>'
set showmatch                           " set show matching parenthesis
set ignorecase                          " ignore case when searching
set hlsearch                            " highlight search terms
set incsearch                           " show search matches as you type
set history=1000                        " remember more commands and search history
set undolevels=1000                     " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class..
                                        " ingnore some files
set title                               " change the terminal's title
set novisualbell                        " don't beep
set noerrorbells                        " don't beep
set nobackup                            " don't write backup files
set noswapfile                          " don't make swp files
set list                                " show whitspace
set listchars=tab:>.,trail:.,extends:#,nbsp:.
                                        " show whitespace
set pastetoggle=<F2>                    " enter paste mode with F2
set colorcolumn=90
" Only load the colour scheme here if this is not Neovim. If this is Neovim,
" assume that the package manager will load the colour scheme.
if !has('nvim')
    colorscheme nord                    " set the colour scheme
endif
"set termguicolors                      " tell vim to use gui colors not terminal colors
set clipboard=unnamedplus               " yank to and paste from the system clipboard
set hidden                              " enable hidden buffers

set t_Co=256                            " force vim to use 256 colors
syntax enable                           " enable syntax highlighting
set background=dark                     " use dark mode

nnoremap ; :
                                        " prefix commands with ; instead of :
nmap <silent> <leader>/ :nohlsearch<CR>
                                        " clean search with ,/

" Navigate windows
nnoremap <left> <C-w>h
nnoremap <right> <C-w>l
nnoremap <up> <C-w>k
nnoremap <down> <C-w>j

" Mappings for buffers
nmap <leader>T :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

" Visual mode indent doesn't lose selection after indent
vnoremap > >gv
vnoremap < <gv


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neomake settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neomake_python_enabled_makers = ['python', 'pylint']
autocmd! BufWritePost,BufReadPost * Neomake

let g:neomake_warning_sign = {
    \ 'text': 'W',
    \ 'texthl': 'WarningMsg',
    \ }

let g:neomake_error_sign = {
    \ 'text': 'E',
    \ 'texthl': 'ErrorMsg',
    \ }

let g:neomake_logfile = '/tmp/neomake.log'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" go-vim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:go_fmt_command = "goimports"      " run 'goimports' on the current file on save

let g:go_auto_type_info = 1             " Status line types/signatures

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline#extensions#tabline#enabled = 1
                                        " Enable tabline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufReadPost fugitive://* set bufhidden=delete
                                        " Auto delete fugitive buffers when there become
                                        " hidden


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:nnoremap <C-g> :NERDTreeToggle<CR>     " Open NERDTree with C-g
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
