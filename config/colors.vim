" Let's set the contrast to be a bit dark

let g:gruvbox_contrast_dark = 'hard'

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

set background=dark
colorscheme gruvbox

" Make the column on the right a bit more solid on the dark background
highlight ColorColumn ctermbg=0 guibg=grey
" Make the column on left of the numbers same color as editor background
highlight SignColumn guibg=None
" Current Row number should also have no weird background
highlight CursorLineNR guibg=None
" Maybe someday I am risky enough to have a transparent background
highlight Normal guibg=None

" Maybe you want to change the color of the rest of line numbers
" highlight LineNr guifg=#5eacd3

" Change the color of the directories that show up in the netrw menu
highlight netrwDir guifg=#5eacd3
" Slightly change the color of the filenames 
highlight qfFileName guifg=#aed75f
" Change the colors of the Telescope plugin
highlight TelescopeBorder guifg=#5eacd




