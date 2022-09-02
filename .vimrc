" required:
filetype plugin indent on

" plug の install check
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/seoul256.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'kchmck/vim-coffee-script'
  Plug 'leafgarland/typescript-vim'

call plug#end()

let g:seoul256_background = 236
colo seoul256
syntax on
set number
set mouse=a
set hlsearch

 " for lightLine
set laststatus=2

let g:indentLine_char = '¦' "use ¦, ┆ or │

 " for vim
set clipboard+=unnamed
set backspace=indent,eol,start

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

