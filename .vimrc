set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'skalnik/vim-vroom'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/ZoomWin'
Plugin 'lilydjwg/colorizer'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jiangmiao/auto-pairs'
" vim-snippets & dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" remove toolbar, left and right scrollbar
set guioptions-=T
set guioptions-=L
set guioptions-=r
" no menu bar
:set go-=m

" default font
set guifont=Inconsolata\ 10

" default colorscheme
syntax enable
set background=dark
color codeschool

" set maximixed window
if has("gui_running")
  set lines=100 columns=200
endif

" allow for hidden unsaved files
set hidden

" set file numbers on left
set number

" no wrap for default
set nowrap

" always display status bar
set laststatus=2

let mapleader = "\<Space>"

" leader maps
" open file
"nnoremap <Leader>o :CtrlP<CR>

" open CtrlP tagbar search
nnoremap <Leader>f :CtrlPTag<CR>

" generate tags
nnoremap <Leader>T :!ctags -R -V --languages=ruby --exclude=db --exclude=config --exclude=db --exclude=tmp --exclude=public<CR>

" write file
"nnoremap <Leader>w :w<CR>

" open / close NERDTree shortcut
nnoremap <Leader>e :NERDTreeToggle<CR>

" open / close Tagbar
nnoremap <Leader>t :TagbarToggle<CR>

" zoom in-out of file
nnoremap <Leader>z :ZoomWin<CR>

" copy & paste to system clipboard with <Space>p and <Space>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" move up and down selected text
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" airline customization
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#formatter = 'unique_tail'
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" file navigation shortcuts
map <C-Tab> :bn<CR>
map <C-S-Tab> :bp<CR>
map <C-F4> :bp<bar>sp<bar>bn<bar>bd<CR>

" right glutter
set colorcolumn=130

" tab configuration
set autoindent shiftwidth=2 softtabstop=2 expandtab

" searching
set ignorecase
set smartcase
set incsearch

" show matching bracets
set showmatch

" performance improvement
set lazyredraw

" start nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" performance improvement
"set foldmethod=indent
"set foldlevel=50

