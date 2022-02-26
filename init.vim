""""""""""""""""""""""""""""""""""""""""""""""""""
" Required neovim, jedi to be installed by pip;  "
""""""""""""""""""""""""""""""""""""""""""""""""""


call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NerdTree and plugins "
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Git plugins "
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Python plugins "
Plug 'davidhalter/jedi-vim'

" Autocompletion and autoformat "
Plug 'sheerun/vim-polyglot'
Plug 'neomake/neomake'
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'

" Frotran plugins "
Plug 'rudrab/vimf90'

" Colorschemes "
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

call plug#end()

filetype plugin indent on

"if has('termguicolors')
"	set termguicolors
"endif

syntax on
syntax enable

set nocompatible
set t_Co=256
set number
"set relativenumber
set ruler
set mouse=a
set encoding=utf-8
set noswapfile
set autoindent

filetype indent on

" Search configuration;
set ignorecase

" Autoformat and autocomplete settings;
noremap <F3> :Autoformat<CR>

" Ale settings;
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'python': ['flake8']}

let g:neomake_python_enabled_makers = ['pylint']

" Edotpr colorschemes; Uncomment required colorscheme; "
" colorscheme gruvbox
" colorscheme nord

