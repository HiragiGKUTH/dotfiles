set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set splitright
set clipboard=unnamed
set hls

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/${HOME}/.nvim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/${HOME}/.nvim/bundles')
  call dein#begin('/${HOME}/.nvim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/${HOME}/.nvim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

