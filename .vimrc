set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'

filetype plugin indent on

syntax on
set shortmess+=I

set backspace=start,indent,eol
set cursorline

set nowrap
:nnoremap <leader>w :setlocal wrap!<CR>:setlocal wrap?<CR>

set noswapfile

" git commits
au BufNewFile,BufRead *.git/COMMIT_EDITMSG set tw=105 noai noshowmatch
au BufNewFile,BufRead *.git/COMMIT_EDITMSG setlocal spell spelllang=en_us
