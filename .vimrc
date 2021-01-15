source $VIMRUNTIME/defaults.vim

"GENERAL EDITING
set history=500
let mapleader=','
noremap <leader>w :w<cr>
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set ai
set si
set number
syntax on
inoremap jk <ESC>
filetype indent plugin on
set showmatch
set foldenable
set foldlevelstart=10
set foldmethod=indent
nnoremap <space> za
set ruler
set hid

"FILES AND WINDOW 
set splitright
"set path+=**
set wildignore+=**/node_modules/**
set autoread
set wildmenu
set nobackup
set nowb
set noswapfile

"SEARCH
set incsearch
set ignorecase
set smartcase
set hlsearch
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"COMMAND HOTKEYS
noremap <leader>p :!git add -A && git commit -m "update notes" && git push origin main<cr>

"PLUGINS
call plug#begin()

"JS/React Plugins
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()

"PLUGIN OPTIONS
autocmd BufWritePre *.js,*.jsx,*.json,*.html,*.css,*.sql PrettierAsync
noremap <leader>f :FZF<Enter>
