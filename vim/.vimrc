set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Bundle "editorconfig/editorconfig-vim"
Bundle "micha/vim-colors-solarized"

call vundle#end()

filetype plugin indent on
syntax enable

set background=light
colorscheme solarized

set tabstop=4
set shiftwidth=4
set spell
set spelllang=en
set number

map q gq}
