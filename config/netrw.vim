" The big banner does not show when you open a directory in vim
let g:netrw_banner = 0

" The folder structure opens up there instead of going in and out
let g:netrw_liststyle = 3

" How the files should open when opening from netrw
" This makes it to jump inside the file and closing the netrw window
let g:netrw_browse_split=0

" Opening the netrw explorer once you're in a project 
" Keep that window compact
let g:netrw_winsize = 25

" Removing a directory or file from netrw
" Press 'D' to delete any file or folder while inside netrw now
let g:netrw_localrmdir='rm -r'
