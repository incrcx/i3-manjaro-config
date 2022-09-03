set nocompatible              " be iMproved, required
filetype on                  " required
set nobackup

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"
"Plugin 'Valloric/YouCompleteMe'
"
"Plugin 'itchyny/lightline.vim'
"
"Plugin 'jiangmiao/auto-pairs'
"
"call vundle#end()            " required
"filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
""filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line
"
"
"execute pathogen#infect()


"SYNTASTIC
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0



"OTHER
set exrc
set secure

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set wrap

set ai
set cin

set showmatch
set hlsearch
set incsearch
set ignorecase

set lz


set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

set number
syntax on

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

"nnoremap <F4> :make!<CR>

"nnoremap <F5> :!./c<CR>

"call plug#begin('~/.vim/plugged')
"
"Plug 'ghifarit53/tokyonight-vim'
"
"Plug 'https://github.com/adelarsq/vim-matchit'
"
"call plug#end()

"if (has("termguicolors"))
" set termguicolors
"endif

"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1

"colorscheme tokyonight

"colorscheme tokyonight




"set laststatus=2
"set noshowmode
"let g:lightline = {
"	\ 'colorscheme': 'tokyonight',
"	\ }
"
"
"let g:AutoPairsMoveCharacter = 0
"
"set completeopt-=preview
