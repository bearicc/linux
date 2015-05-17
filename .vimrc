set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-pathogen'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'
call vundle#end()
filetype plugin indent on

syntax on
call pathogen#infect() 

set tabstop=4 expandtab shiftwidth=4 softtabstop=4
set nobackup nowritebackup noswapfile
set nu
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

let g:ycm_global_ycm_extra_conf = '/home/bear/.vim/bundle/.ycm_extra_conf.py'

