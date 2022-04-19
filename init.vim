
set nobackup
set clipboard=unnamedplus
set cmdheight=2
set fileencoding="utf-8"
set number
set relativenumber
set conceallevel=0
set hlsearch
set ignorecase
set mouse="a"
set pumheight=10
set noshowmode
set showtabline=2
set smartindent
set splitbelow
set splitright
set noswapfile
set termguicolors
set timeoutlen=1000
set updatetime=300
set undofile
set nowritebackup
set expandtab
set shiftwidth=2
set tabstop=2
set numberwidth=4
set signcolumn=yes
set cursorline
set nowrap
set wildmenu
set shortmess+=c

colorscheme tokyonight

call plug#begin()
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()
