set nocompatible                                                            " switch off Vi compatibility mode;

filetype off                                                                " 
filetype plugin on                                                          " 

set rtp+=~/.vim/bundle/Vundle.vim                                           " runtime path to include Vundle;

"===========================================================================
" Vim plugins
"===========================================================================
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'                                           " Plugin manager (required);
    Plugin 'vim-polyglot'                                                   " Polyglot syntax highlighting;
    Plugin 'tpope/vim-endwise'                                              " automatically close code blocks;
    Plugin 'tpope/vim-fugitive'                                             " Git wrapper with command line;
    Plugin 'tpope/vim-commentary'                                           " Use 'g a' to comment out anything;
    " ----- Python -----
    Plugin 'klen/python-mode'                                               " Python mode (docs, refactor, lints etc.)
    Plugin 'mitsuhiko/vim-jinja'                                            " Jinja support for Vim;
    Plugin 'mitsuhiko/vim-python-combined'                                  " Combined Python 2/3 for Vim;
    " ----- Themes and appearance -----
    Plugin 'marcopaganini/termschool-vim-theme'                             " vim theme;
    Plugin 'challenger-deep-theme/vim', {'name': 'challenger_deep'}         " vim theme;
    Plugin 'kristijanhusak/vim-hybrid-material', {'name': 'hybrid_metal'}   " vim theme; 
    Plugin 'NLKNguyen/papercolor-theme'                                     " vim theme;
    Plugin 'flazz/vim-colorschemes'                                         " vim themes plugin;
    Plugin 'preservim/nerdtree'                                             " NERDTree plugin;
    " ----- Docker -----
    Plugin 'ekalinin/Dockerfile.vim'                                        " Dockerfile syntax support plugin;
    Plugin 'vim-airline/vim-airline'                                        " Vim-Airline plugin;
    Plugin 'vim-airline/vim-airline-themes'                                 " Airline themes;
call vundle#end()


"===========================================================================
" Airline configuration
"===========================================================================
let g:airline#extensions#tabline#enabled = 1                                " airline extensions;
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1                                " 

"===========================================================================
" NERDTree configuration
"===========================================================================
autocmd VimEnter * NERDTree | wincmd p                                      " autoenable NERDTree on vim start;
nnoremap <leader>n :NERDTreeFocus<CR>                                       " NERDTree shortcuts;
nnoremap <C-n> :NERDTree<CR>                                                " NERDTree shortcut; 
nnoremap <C-t> :NERDTreeToggle<CR>                                          " NERDTree shortcut - tab;
nnoremap <C-f> :NERDTreeFind<CR>                                            " NERDTree shortcut - find;

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
        \ quit | endif                                                      " Exit Vim if NERDTree is the only window
                                                                            " left;

"===========================================================================
" Editor settings
"===========================================================================
syntax enable                                                               " enable syntax highlight;
set number                                                                  " show line numbers;
set ts=4                                                                    " set TAB to 4 spaces; 
set ls=2
set expandtab                                                               " transform TAB into spaces; 
set autoindent                                                              " 
set cursorline                                                              " highlight line with cursor on;
set showmatch                                                               " show matching pair for [], {} and ();
set t_Co=256                                                                " set 256 colors terminal;
set termencoding=utf-8                                                      " default terminal encoding;
set mouse=a                                                                 " enable mouse support in Vim;
set hlsearch                                                                " highlight search results;
set encoding=utf-8                                                          " default editor encoding;
set nobackup                                                                " switch off backup files;
set fileencoding=utf-8                                                      " default files encoding;

"===========================================================================
" Autocomplete and syntax highlights
"===========================================================================
autocmd FileType python set omnifunc=pythoncomplete#Complete                " 
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS      " 
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags                " 
autocmd FileType css set omnifunc=csscomplete#CompleteCss                   " 
let python_highlight_all=1                                                  " enable Python syntax highlight;

"===========================================================================
" Shortcuts
"===========================================================================
vmap <C-C> "+yi                                                             "
imap <C-V> "+gPi                                                            " 

"===========================================================================
" Colorschemes
"===========================================================================
" colorscheme PaperColor
" colorscheme challenger_deep
" colorscheme wombat
" colorscheme github
" colorscheme afterglow
" colorscheme gotham
" colorscheme iceberg
" colorscheme parsec
" colorscheme scheakur
" colorscheme hybrid
" colorscheme jellybeans
" colorscheme lightning
" colorscheme hybrid_reverse
" colorscheme lucid
" colorscheme meta5
" colorscheme minimalist
" colorscheme nord
" colorscheme OceanicNext
" colorscheme paramount
" colorscheme sierra
colorscheme space-vim-dark
" colorscheme termschool
" colorscheme 256_noir
" colorscheme pencil
