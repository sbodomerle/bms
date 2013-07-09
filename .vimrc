set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'sukima/xmledit'

Bundle 'Valloric/YouCompleteMe'
:nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

Bundle 'eclim'
let g:EclimCompletionMethod = 'omnifunc'

filetype plugin indent on

syntax on
set shortmess+=I
set incsearch
set hlsearch
:nnoremap <leader>q :nohlsearch<CR>

set backspace=start,indent,eol
set cursorline
set wildmenu
set wildmode=list:longest
set wildignore=*.class,*.o,*.bak,*.swp,*.pyc

set nowrap
:nnoremap <leader>w :setlocal wrap!<CR>:setlocal wrap?<CR>

set autoindent

set noswapfile
set undodir=~/.vim/.undo,/tmp
set undofile
set history=200

" git commits
au BufNewFile,BufRead *.git/COMMIT_EDITMSG set tw=105 noai noshowmatch
au BufNewFile,BufRead *.git/COMMIT_EDITMSG setlocal spell spelllang=en_us

au BufReadPre *.pdf set ro
au BufReadPost *.pdf %!pdftotext -nopgbrk "%" - |fmt -csw105

au FileType c,cpp,cs,java,jsp,objc,sh,sql,xml set number
:nnoremap <leader>n :setlocal number!<CR>
:nnoremap <leader>r :setlocal relativenumber!<CR>
