set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'sukima/xmledit'
Plugin 'scrooloose/nerdcommenter'

Plugin 'majutsushi/tagbar'
let g:tagbar_autofocus = 1
:nnoremap <F9> :TagbarToggle<CR>

Plugin 'Valloric/YouCompleteMe'
:nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_extra_conf_globlist = ['~/*']

Plugin 'eclim'
let g:EclimCompletionMethod = 'omnifunc'

Plugin 'marijnh/tern_for_vim'

Plugin 'bitc/vim-bad-whitespace'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

Plugin 'godlygeek/tabular'
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
nnoremap <leader>a<bar> :Tabularize /<bar><CR>
vnoremap <leader>a<bar> :Tabularize /<bar><CR>
nnoremap <leader>a: :Tabularize /:\zs<CR>
vnoremap <leader>a: :Tabularize /:\zs<CR>

Plugin 'Shougo/vinarise'
Plugin 'Shougo/vimproc.vim'

Plugin 'Shougo/unite.vim'
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
cnoremap sudow w !sudo tee % >/dev/null

" git commits
au BufNewFile,BufRead *.git/COMMIT_EDITMSG set tw=105 noai noshowmatch
au BufNewFile,BufRead *.git/COMMIT_EDITMSG setlocal spell spelllang=en_us

au BufReadPre *.pdf set ro
au BufReadPost *.pdf %!pdftotext -nopgbrk "%" - |fmt -csw105

"====[ Swap : and ; to make colon commands easier to type ]======
nnoremap  ;  :
nnoremap  :  ;

"====[ Swap v and CTRL-V, because Block mode is more useful that Visual mode ]====
nnoremap    v   <C-V>
nnoremap <C-V>     v
vnoremap    v   <C-V>
vnoremap <C-V>     v
