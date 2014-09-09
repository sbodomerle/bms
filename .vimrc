set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-unimpaired'

call vundle#end()
filetype plugin indent on

syntax on

set autoindent
set backspace=start,indent,eol
set history=200
set hlsearch
set incsearch
set noswapfile
set shortmess+=I
set splitbelow
set splitright
set undodir=~/.vim/.undo,/tmp
set undofile

highlight Pmenu ctermfg=White ctermbg=Blue guifg=#ffffff guibg=#0000ff
