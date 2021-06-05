"
" Includes the global sets for vim to take place
"

" Change the default cursor behavior to always be in block mode
set guicursor=

" Set Line Numbers
set nu
set relativenumber

" Set Tab Sizes & Use Spaces instead of Tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" Set Indentation> Do we need file based indentations ?
set autoindent
set smartindent
filetype plugin indent on

" Keep the code compressed to line width-80
set colorcolumn=80

" Shows the errors & warnings on the left of the number pane
set signcolumn=yes

" The color scheme for 24 bit colors gets used: Trust me, it's better
set termguicolors

" Stop highlighting while cycling through the search matches
" Stops the editor from glowing up with fireflies
set nohlsearch
" Quickly cycles/jumps based on the current text typed to the first match
set incsearch

" You can edit multiple files and switch between them before saving
" Vim will not force to save before switching a file
set hidden

" Don't need any sounds coming from the editor
set noerrorbells

" Keep some lines above and below cursor while scrolling
set scrolloff=8

" Don't create a swap file for the love of GOD! 
set noswapfile

" Create directories and space for keeping track of changes
set undodir=~/.vim/undodir
set undofile

" Add one more row at the bottom to display multi line messages
set cmdheight=1

" Quickly update things to increase responsiveness
set updatetime=50

" Don't pass messages to | ins-completion-menu | 
set shortmess+=c

" Don't need to see -- INSERT -- or other status in the message line
" Instead use the status line for displaying the state via plugins
set noshowmode
