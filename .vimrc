"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'mattn/gist-vim'
Bundle 'vim-scripts/Vim-Blog'
Bundle 'kana/vim-smartinput'
Bundle 'javaguirre/snipmate.vim'
Bundle 'jnurmine/Zenburn'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'robhudson/snipmate_for_django'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'jcrocholl/pep8'

filetype plugin on
filetype plugin indent on

set smartindent
set ruler
set showcmd
set number
set cursorline
set smartcase
set incsearch
set hlsearch
set gfn=Monaco

syntax on

if has("gui_running")
"  colorscheme desert
" colorscheme solarized
  colorscheme jellybeans
" set bg=light
else
  colorscheme jellybeans
endif

"Python"
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"encoding
set encoding=utf-8
set laststatus=2
set t_Co=256

set sts=4

"White spaces"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
"match performance

""source /home/javaguirre/.vim/ftplugin/xml.vim
""autocmd FileType python runtime! /home/javaguirre/.vim/autoload/pythoncomplete.vim
""autocmd FileType php runtime! /home/javaguirre/.vim/autoload/phpcomplete.vim
""autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim
""autocmd BufNewFile,BufRead *.html source ~/.vim/ftplugin/xml.vim

"Keys"
nmap <F2> :NERDTree<CR>
imap <F2> :Vex<CR>
nmap <F3> :TlistToggle<CR>
imap <F3> :TlistToggle<CR>
""nmap <F4> :Project<CR>
""imap <F4> :Project<CR>

" Shortcuts for moving between tabs.
" Alt-j to move to the tab to the left
noremap <A-j> gT
" Alt-k to move to the tab to the right
noremap <A-k> gt
"Autocomplete"
imap <c-space> <c-x><c-o>

"minibufexpl"
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"tmux"
nnoremap <Esc>A <up>
nnoremap <Esc>B <down>
nnoremap <Esc>C <right>
nnoremap <Esc>D <left>
inoremap <Esc>A <up>
inoremap <Esc>B <down>
inoremap <Esc>C <right>
inoremap <Esc>D <left>

"Exec python"
map <buffer> <S-e> :w<CR>:!/usr/bin/env python2 % <CR>
