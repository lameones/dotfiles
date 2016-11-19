call plug#begin('~/.vim/plugged')

" Colors
Plug 'easysid/mod8.vim'
Plug 'scwood/vim-hybrid'
Plug 'sickill/vim-monokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'bcicen/vim-vice'
Plug 'vyshane/vydark-vim-color'
Plug 'fugalh/desert.vim'

" Plugins
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
"Plug 'powerline/fonts'
Plug 'rodjek/vim-puppet'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'ross/requests-futures'
Plug 'ajh17/VimCompletesMe'
Plug 'shawncplus/phpcomplete.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'godlygeek/csapprox'

call plug#end()

syntax on
filetype plugin indent on

"Set color scheme
colorscheme Tomorrow-Night
set background=dark

"Fix xterm colors
if &term == "xterm"
    set t_Co=256
endif

"Airline settings
"let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

"Enable omni completion
set omnifunc=syntaxcomplete#Complete

"CTRL + n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

"Syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Tab/indent options
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set autoindent          " always set autoindenting on
set copyindent          " copy the previous indentation on autoindenting
set shiftwidth=4        " number of spaces to use for autoindenting
set smarttab            " insert tabs on the start of a line according to shiftwidth, not tabstop

"UI options
set number              " show line numbers
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"set foldenable          " enable folding
"set foldlevelstart=99   " open most folds by default
"set foldmethod=indent   " fold based on indent level (marker, manual, expr, syntax, diff)
set nowrap              " don't wrap lines
set ignorecase          " ignore case when searching

"Mappings
set pastetoggle=<F2>                " F2 toggles paste mode
nnoremap <F1> :set nonumber!<CR>    " F1 toggles line numbers
nnoremap <space> za                 " Enable folding with the spacebar

"SimplyFold settings
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<


