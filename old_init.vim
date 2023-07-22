let mapleader = " "
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
set autowrite               " Automatically :write before running commands
set number                  " add line numbers

" show relateive line number
augroup numbertoggle
   autocmd!
   autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
   autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
 " Plug Section

 " Adds file type icons to Vim plugins
 Plug 'ryanoasis/vim-devicons'
 " Plug 'SirVer/ultisnips'
 " Plug 'honza/vim-snippets'
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " Plug 'mhinz/vim-startify'

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'

Plug 'vim-ruby/vim-ruby'
let ruby_operators = 1
let ruby_pseudo_operators = 1
let ruby_spellcheck_strings = 1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dispatch'

Plug 'dense-analysis/ale'
let g:ale_linters = {
\ 'ruby': ['rubocop'],
\ 'javascript': ['eslint']
\}
let g:ale_fixers = {'ruby': ['rubocop']}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_ruby_rubocop_executable = 'bin/rubocop'

source ~/.config/nvim/plug/fzf.vim
source ~/.config/nvim/plug/vim-rspec.vim
source ~/.config/nvim/plug/coc.vim
source ~/.config/nvim/plug/vim-airline.vim
call plug#end()

set smartcase
set t_Co=256
set statusline+=%{FugitiveStatusline()}
nnoremap H gT
nnoremap L gt
let g:dracula_italic = 0

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" set tags=./tags,./TAGS,tags;~,TAGS;~
