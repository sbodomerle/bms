set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'sukima/xmledit'
Bundle 'scrooloose/nerdcommenter'

Bundle 'Valloric/YouCompleteMe'
:nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_collect_identifiers_from_tags_files = 1

Bundle 'eclim'
let g:EclimCompletionMethod = 'omnifunc'

Bundle 'bitc/vim-bad-whitespace'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'

Bundle 'Shougo/vimproc.vim'

Bundle 'Shougo/unite.vim'
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :Unite -no-split -buffer-name=files -start-insert file_rec/async:!<CR>
nnoremap <leader>f :Unite -no-split -buffer-name=files -start-insert file<CR>
nnoremap <leader>m :Unite -no-split -buffer-name=mru   -start-insert file_mru<CR>
nnoremap <leader>y :Unite -no-split -buffer-name=yank history/yank<CR>
nnoremap <leader>e :Unite -no-split -buffer-name=buffer buffer<CR>
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

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
set splitbelow
set splitright

set nowrap
:nnoremap <leader>w :setlocal wrap!<CR>:setlocal wrap?<CR>

set autoindent

set noswapfile
set undodir=~/.vim/.undo,/tmp
set undofile
set history=200

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" git commits
au BufNewFile,BufRead *.git/COMMIT_EDITMSG set tw=105 noai noshowmatch
au BufNewFile,BufRead *.git/COMMIT_EDITMSG setlocal spell spelllang=en_us

au BufReadPre *.pdf set ro
au BufReadPost *.pdf %!pdftotext -nopgbrk "%" - |fmt -csw105
