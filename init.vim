"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Manage the plugins
call plug#begin("~/.vim/plugged")

" some possible colorschemes
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Setting up lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

" Using Snippets
" Need to learn about snippets as well
Plug 'L3MON4D3/LuaSnip'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Project Search + Finding things
" Telescope Plugin
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" Need to add support for the terraform files
Plug 'hashivim/vim-terraform'

" Add plugin for git support 
Plug 'tpope/vim-fugitive'


call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Some simple settings for terraform files
let g:terraform_fmt_on_save=1
let g:terraform_align=1

" This is Rip-Grep: for fast searches across the codebase
if executable('rg')
    let g:rg_derive_root='true'
endif

lua require('lualine').setup()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
  }
}
EOF

" If matched parenthesis distracts you, can easily disable using this one
" let loaded_matchparen = 1

" Creating the leader to issue various commands 
let mapleader = " "

" Set up all the sensible remaps for basic navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" Show the complete undotree 
" nnoremap <leader>u :UndotreeShow<CR>
" Can use :Sex!<CR> as well to open up explorer on the side
nnoremap <leader>pv :Lexplore<CR>
" Resume back to the same file and use <c-6> after that for toggling
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
" Selecting multiple lines and moving them
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
