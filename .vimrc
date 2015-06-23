if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'junegunn/seoul256.vim'
 NeoBundle 'itchyny/lightLine.vim'
 " NeoBundle 'nathanaelkane/vim-indent-guides'
 NeoBundle 'Yggdroot/indentLine'



 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


colo seoul256
syntax on
set number
set mouse=a
set hlsearch

 " set title
let &titlestring = hostname() . ": " . expand("%:~")
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
"if &term == "screen" || &term == "xterm"
  set title
"endif


 " for lightLine 
set laststatus=2

 " for vim-indent-guides
 " colorscheme
 "let g:indent_guides_enable_on_vim_startup=1
"set ts=4 sw=4 et
"let g:indent_guides_start_level=2
"let g:indent_guides_guide_size=1
"let g:indentLine_color_term = 111
"let g:indentLine_color_gui = '#708090'
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

