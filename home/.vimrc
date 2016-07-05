set autoindent
set tabstop=8
set shiftwidth=8
set backspace=2
set laststatus=2
set showmatch
set ruler
set hlsearch
set incsearch
set mousehide
set nocp
set hi=100
set novb
set wildmenu
set comments=sr:/*,mb:*,el:*/,://,b:#,:%L%,:%l%,:%,:XCOMM,n:>,fb:-,:CVS
set textwidth=78
set formatoptions=roq
set background=dark

" pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

let mapleader="\\"
map <Space> <Leader>
nnoremap <Leader>x i
set showcmd

nnoremap <LocalLeader>sh :Slamhound<CR>

nnoremap ,, :ls<CR>:buffer<space>
nnoremap ,e :split<CR>:Ex<CR>
nnoremap ,1 :e#1<CR>
nnoremap ,2 :e#2<CR>
nnoremap ,3 :e#3<CR>
nnoremap ,4 :e#4<CR>
nnoremap ,5 :e#5<CR>
nnoremap ,6 :e#6<CR>
nnoremap ,7 :e#7<CR>
nnoremap ,8 :e#8<CR>
nnoremap ,9 :e#9<CR>
nnoremap ,0 :e#0<CR>

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>

set pastetoggle=<F12>

let g:ScreenImpl = 'Tmux'

set wildignore+=*/target/*
set wildignore+=*/build/*
set wildignore+=*/out/*
set wildignore+=*/Resources/*
set wildignore+=*/.repl/*
set wildignore+=*/.idea/*
set wildignore+=*/.cljs_rhino_repl/*

let g:sexp_enable_insert_mode_mappings = 0

runtime! macros/matchit.vim

let g:clj_fmt_autosave = 0
