set nocompatible

" needed for vundle
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Vundle configuration                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-unimpaired'

Plugin 'majutsushi/tagbar'

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

"====[ Swap : and ; to make colon commands easier to type ]======
nnoremap  ;  :
nnoremap  :  ;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                tagbar                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_autopreview = 1
:nnoremap <F9> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
	\'i:imports:1',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}
