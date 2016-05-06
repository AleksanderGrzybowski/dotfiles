"""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""



set ts=4
set sw=4
set expandtab cursorline

set showcmd
set number
set ruler
set laststatus=2
syntax on

set background=dark
set t_Co=256
colorscheme solarized

set guifont=Hack\ 10
set guioptions=-r

set ignorecase
set infercase
set wrap
set linebreak
set noswapfile

" windows shortcuts
nnoremap <c-s> :wa<CR>
inoremap <c-s> <Esc>:wa<CR>a

" IntelliJ shortcuts for tabs
nnoremap <M-Right> :<C-U>tabnext<CR>
inoremap <M-Right> <C-\><C-N>:tabnext<CR>i
noremap <M-Left> :<C-U>tabprevious<CR>
inoremap <M-Left> <C-\><C-N>:tabprevious<CR>

set mouse=a

" fix insane default behavior
noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
noremap <buffer> <silent> 0 g0
noremap <buffer> <silent> $ g$

set clipboard=unnamed,unnamedplus

" things that should be default, but aren't
imap jk <esc>
nnoremap ' `
nnoremap ` '
noremap Q :echo<CR>
map q: :q
set timeoutlen=1000 ttimeoutlen=0


set scrolloff=2


let mapleader = ","
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>h :noh<CR>

au InsertEnter * hi StatusLine ctermfg=3
au InsertLeave * hi StatusLine ctermfg=12
