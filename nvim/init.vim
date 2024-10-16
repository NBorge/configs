set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set clipboard+=unnamedplus   " using system clipboard
set scrolloff=3
autocmd FileType * set formatoptions-=ro " Disable auto comments

""""""""""""" Custom Bindings
" rebind autocomplete
imap <C-j> <C-y>
" tabs
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>
" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" copies filepath to clipboard by pressing yf
nnoremap <silent> yp :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


"kNERDTree
nnoremap <C-t> <Cmd>NERDTreeToggle<CR>
nnoremap <C-d> <Cmd>NERDTreeFind<cr>
"nnoremap <C-n> <Cmd>NERDTree<CR>
nnoremap <C-f> <Cmd>NERDTreeFocus<CR>
let mapleader = ","

" telescope (has nvim-lua/plenary as dependency)
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

call plug#begin()
 Plug 'ap/vim-css-color'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-unimpaired'
 Plug 'vim-airline/vim-airline'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'terryma/vim-multiple-cursors'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'christoomey/vim-tmux-navigator'
 Plug 'ggandor/leap.nvim'
 " THEMES
 Plug 'rafi/awesome-vim-colorschemes'
 " language highlighting
 Plug 'BeneCollyridam/futhark-vim' " Futhark
call plug#end()

"colorscheme jellybeans
"colorscheme afterglow
colorscheme gruvbox

" setup leap.vim
lua require('leap').create_default_mappings()
nnoremap <C-s> cl


