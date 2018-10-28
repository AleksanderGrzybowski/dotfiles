set nocompatible " force Vim

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Bundle 'altercation/vim-colors-solarized'
Bundle 'hashivim/vim-terraform'
Plugin 'sotte/presenting.vim'

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
nnoremap ' `
nnoremap ` '
noremap Q :echo<CR>
map q: :q
set timeoutlen=1000 ttimeoutlen=0
set scrolloff=2

" leader key
let mapleader = ","
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>h :noh<CR>
nmap <Leader>w :wa<CR>
nmap <Leader>f :FZF<CR>

" different colors for normal/insert mode
au InsertEnter * hi StatusLine ctermfg=3
au InsertLeave * hi StatusLine ctermfg=10

" http://stackoverflow.com/questions/6453595/prevent-vim-from-clearing-the-clipboard-on-exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))

" testing if this works for playbooks
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
