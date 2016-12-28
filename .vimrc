"""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " force Vim

" Vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'metakirby5/codi.vim'
Bundle 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" 4-space tabs
set ts=4
set sw=4
set expandtab cursorline

" some view stuff
set showcmd
set number
set ruler
set laststatus=2

" colors
syntax on
set background=dark
set t_Co=16
colorscheme solarized

" My favorite font
set guifont=Hack\ 10
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" some saner settings
set ignorecase
set infercase
set wrap
set linebreak
set noswapfile
set incsearch

" windows shortcuts
nnoremap <c-s> :wa<CR>
inoremap <c-s> <Esc>:wa<CR>a

" mouse enabled
set mouse=a

" fix insane default behavior
noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
noremap <buffer> <silent> 0 g0
noremap <buffer> <silent> $ g$

" use single clipboard
set clipboard=unnamed,unnamedplus

" things that should be default, but aren't
imap jk <esc>
nnoremap ' `
nnoremap ` '
noremap Q :echo<CR>
map q: :q
set timeoutlen=1000 ttimeoutlen=0
set scrolloff=2

" sometimes useful for AVR stuff
nmap <F5> :make<CR>
set autowrite

" leader key
let mapleader = ","
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>h :noh<CR>
nmap <Leader>w :wa<CR>

" changing cursor line/block doesn't really work in tmux
" so this workaround...
au InsertEnter * hi StatusLine ctermfg=3
au InsertLeave * hi StatusLine ctermfg=10

" http://stackoverflow.com/questions/6453595/prevent-vim-from-clearing-the-clipboard-on-exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))

