set nocompatible              " be iMproved, required
filetype off                  " required

" automatic spacing
filetype plugin indent on
filetype indent on
set tabstop=4
set shiftwidth=4
set cindent
"set expandtab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'CSApprox'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'sickill/vim-pasta'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'  
Plugin 'tpope/vim-vinegar'

"Plugin 'SirVer/ultisnips'  
"Plugin 'auto-pairs'
"Plugin 'thinca/vim-quickrun'

call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on


" activating powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


" color schemes
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'jaromero/vim-monokai-refined'   
"Plugin 'sickill/vim-monokai'
Plugin 'morhetz/gruvbox'

syntax on
"syntax enable
set t_Co=256

"set background=light
set background=dark
"colorscheme solarized
colorscheme gruvbox 

set lazyredraw
set laststatus=2

" show line number
" first show line number
set relativenumber
set number
set numberwidth=5


" max number of tabs
set tabpagemax=50
" set color column
"set colorcolumn=120

" tab navigation 
nnoremap tp  :tabprevious<CR>
nnoremap tn  :tabnext<CR>
nnoremap tl  :tablast<CR>
nnoremap tf  :tabfirst<CR>
nnoremap tc  :tabclose<CR>


" copy the entire content of a file
nnoremap yf :%y<CR>
nnoremap df :%d<CR>

" wrap in parens using surround plugin (and hence requires surround.vim to be
" installed)
"map ,r ysiw]hx
"map ,rr bbys3iw]hx
"map ,t ysiw)
"map ,tt ysiw)

" no plugin required
"till the end of the line
nnoremap ,rr Bhxi[<Esc>A]<Esc>a
nnoremap ,tt Bhxi(<Esc>A)<Esc>a
nnoremap ,rs Bhxi[<Esc>f<space>i]<Esc> 

" insert new line using enter and ctrl-enter in normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" remapping and making change inside parens work properly
nmap cip f(ci(
nmap cis f[ci[
" nmap vip vi( " vip is for select inside parens
nmap vis vi[

" escape key takes a while to leave insert mode, so do
set timeoutlen=1000 ttimeoutlen=0

" disable arrow keys in insert and normal mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" enable folding
setlocal foldmethod=syntax

" save, save and quit, and force quit
nnoremap ,s :w<CR>
nnoremap ,ss :wq<CR>
nnoremap ,sf :q!<CR>
nnoremap ,sa :wqa<CR>
nnoremap ,ns :q!<CR>
nnoremap ,sm :wa<CR>:mksession!<CR>:qa<CR>

" run python from within vim. Run RunSession.py
"nnoremap <buffer> m :wa<CR>:exec '!clear;python ~/Dropbox/Florence/RunSession.py' shellescape(@%, 1)<CR>
nnoremap mp :wa<CR>:exec '!clear;python ~/Dropbox/Florence/RunSession.py' shellescape(@%, 1)<CR>
" run python on buffer
nnoremap <buffer> mm :w<CR>:exec '!clear;python' shellescape(@%, 1)<CR>
"command R !./%

" source .vimrc
nnoremap ,vi :w<CR>:source ~/.vimrc<CR>
