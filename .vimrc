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
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on

" Roman's added plugin
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'CSApprox'
"Plugin 'thinca/vim-quickrun'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'sickill/vim-pasta'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'  
Plugin 'tpope/vim-vinegar'

"Plugin 'SirVer/ultisnips'  
"Plugin 'auto-pairs'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'Shougo/neocomplete'

"let g:UltiSnipsExpandTrigger="<CR>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"Plugin 'osyo-manga/vim-marching'

"" clang 
"let g:marching_clang_command = "/usr/local/bin/clang"
"" filetype=cpp 
"let g:marching#clang_command#options = {
"            \   "cpp" : "-std=c++11"
"            \}
"let g:marching_include_paths = [
"            \   "/usr/include/c++/4.8.4/",
"            \   "/usr/include/c++/4.8/"
"            \]
"
"" neocomplete.vim 
""let g:marching_enable_neocomplete = 1
"if !exists('g:neocomplete#force_omni_input_patterns')
"      let g:neocomplete#force_omni_input_patterns = {}
"  endif
"let g:neocomplete#force_omni_input_patterns.cpp =
"      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
"set updatetime=200
"imap <buffer> <C-x><C-o> <Plug>(marching_start_omni_complete)
"imap <buffer> <C-x><C-x><C-o> <Plug>(marching_force_start_omni_complete)
"" let g:marching_backend = "sync_clang_command"


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

"colorscheme monokai
"set background=light
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme gruvbox 

set lazyredraw
set laststatus=2

"set background=light
"colorscheme solarized

" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


" show line number
" first show line number
set relativenumber
set number
set numberwidth=5

" Commenting blocks of code.
"autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
"autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"autocmd FileType conf,fstab       let b:comment_leader = '# '
"autocmd FileType tex              let b:comment_leader = '% '
"noremap <silent> ,cc :<C-B>silent<C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent<C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


" map ctrl-s for save in vim
"command -nargs=0 -bar Update if &modified 
"                           \|    if empty(bufname('%'))
"                           \|        browse confirm write
"                           \|    else
"                           \|        confirm write
"                           \|    endif
"                           \|endif
"nnoremap <silent> <C-S> :<C-u>Update<CR>

" save, save and quit, and force quit
nnoremap ,s :w<CR>
nnoremap ,ss :wq<CR>
nnoremap ,sf :q!<CR>
nnoremap ,sa :qa<CR>
nnoremap ,ns :q!<CR>
"inoremap ,s <Esc>:w<CR>i
"inoremap ,ss <Esc>:wq<CR>
"inoremap ,sf <Esc>:q!<CR>
"inoremap ,sa <Esc>:qa<CR>
"inoremap ,ns <Esc>:q!<CR>

" " KeyBindings {{{2
" let mapleader=","
"
" nnoremap ,cc :<C-B>silent <C-E>s/\V\.\*/\=
"             \printf(&commentstring,getline("."))/<CR>
"             \:nohlsearch<CR>
" nnoremap ,cu :<C-B>silent <C-E>s/\V\^<C-R>=
"             \escape(get(split(&commentstring,'%s'),0,''),'\/').'\\|'.
"             \escape(get(split(&commentstring,'%s'),1,''),'\/')
"             \<CR>\$//g<CR>:nohlsearch<CR>
" " }}}
"

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

" run python from within vim. Run RunSession.py
"nnoremap <buffer> m :wa<CR>:exec '!clear;python ~/Dropbox/Python/RunSession.py' shellescape(@%, 1)<CR>
nnoremap m :wa<CR>:exec '!clear;python ~/Dropbox/Python/RunSession.py' shellescape(@%, 1)<CR>
" run python normal
nnoremap <buffer> mm :w<CR>:exec '!clear;python' shellescape(@%, 1)<CR>
"command R !./%

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
"inoremap ,rr <Esc>Bhxi[<Esc>A]<Esc>a
"inoremap ,tt <Esc>Bhxi(<Esc>A)<Esc>a
"till the next white space

" insert new line using enter and ctrl-enter in normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" remapping and making change inside parens work properly
nmap cip f(ci(
nmap cis f[ci[

" remapping and making change inside parens work properly
" nmap vip vi( " vip is for select inside parens
nmap vis vi[

" map escape key
"inoremap ,e <Esc> " note that escape key is already mapped to caps-lock
" escape key takes a while to leave insert mode, so do
set timeoutlen=1000 ttimeoutlen=0

" disable arrow keys in insert as well as normal mode
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

" source .vimrc
nnoremap ,vi :w<CR>:source ~/.vimrc<CR>
