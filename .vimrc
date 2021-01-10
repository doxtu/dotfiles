"Syntax highlighting
syntax on

"Remap j and k to escape
inoremap jk <ESC>

"Sets visible size of tabs in spaces
set tabstop=2

"How much whitespace removed from backspace and how much added by tab in spaces.
set softtabstop=2

"Sets the size of an indentation
set shiftwidth=2

"When tab is pressed in insert mode, add spaces instead of tab
set expandtab

"Auto indent on new line
set ai

"display line number
set number

"Load the indentation scheme based on filetype
filetype indent on

"Show matching brackets in files
set showmatch

"Enable text folding for large block
set foldenable
set foldlevelstart=10
set foldmethod=indent
nnoremap <space> za

