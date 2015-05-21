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
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mhinz/vim-startify'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
call vundle#end()
filetype plugin indent on

syntax on
call pathogen#infect() 

set tabstop=8 expandtab shiftwidth=4 softtabstop=4
set nobackup nowritebackup noswapfile
set nu
" snipmate and snippets
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
" ycm
let g:ycm_global_ycm_extra_conf = '/home/bear/.vim/bundle/.ycm_extra_conf.py'
map <C-n> :NERDTreeTabsToggle<CR>
"let g:nerdtree_tabs_open_on_console_startup = 1

" Get both NERDTree and Startify working at startup
"autocmd VimEnter *
"            \   if !argc()
"            \ |   Startify
"            \ |   NERDTree
"            \ |   wincmd w
"            \ | endif
"
" vim-session
let g:session_autosave = 'no'
let g:session_autoload = 'no'
" resize current buffer by +/- 5 
nnoremap <C-left> :vertical resize -5<cr>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-right> :vertical resize +5<cr>
