source $HOME/.config/nvim/config/sets.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Manage the plugins
call plug#begin("~/.vim/plugged")

" Have a better status line
Plug 'hoob3rt/lualine.nvim'
Plug 'ryanoasis/vim-devicons'

" LSP Plugins 
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'kabouzeid/nvim-lspinstall'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Add support for doing git operations within the editor
" Basically :Git <command>, instead of exiting outside
Plug 'tpope/vim-fugitive'

" Add Colorschemes> Tuned for gruvbox though
Plug 'flazz/vim-colorschemes'

" View complete undo history
Plug 'mbbill/undotree'

" Project Search + Finding things
" Telescope Plugin
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set up Treesitter
lua<<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python", "bash", "cpp", "go"},
  highlight = {
    enable = true
  },
}
EOF

" This is Rip-Grep: for fast searches across the codebase
if executable('rg')
    let g:rg_derive_root='true'
endif

" If matched parenthesis distracts you, can easily disable using this one
" let loaded_matchparen = 1

" Creating the leader to issue various commands 
let mapleader = " "

" Enable lualine
lua << EOF
require'lualine'.setup{
  options = { theme  = 'gruvbox' },
}
EOF

" Set up all the sensible remaps for basic navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" Show the complete undotree 
nnoremap <leader>u :UndotreeShow<CR>
" Can use :Sex!<CR> as well to open up explorer on the side
nnoremap <leader>pv :Ex<CR>
" Resume back to the same file and use <c-6> after that for toggling
nnoremap <leader>pr :Rex<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
" Selecting multiple lines and moving them
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Setup the maps for telescope here
source $HOME/.config/nvim/config/telescope.vim

" Setting up the configuration for the final value
source $HOME/.config/nvim/config/netrw.vim

" Need to make sure the colors are set after the plugins are called
"
" If you move it to before the plug call, the highlights after colorscheme
" will be reset
" 
" Ensure the colors are setup before the lsp to show those sweet error prompts
" in the editor signcolumn
source $HOME/.config/nvim/config/colors.vim

" Creates the default language server bindings for any Python based projects
source $HOME/.config/nvim/config/lsp.vim
