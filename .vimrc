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
Bundle 'kana/vim-smartinput'
Bundle 'jnurmine/Zenburn'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/comments.vim'
Bundle 'vim-scripts/TwitVim'
Bundle 'groenewege/vim-less'
Bundle 'timcharper/textile.vim'
Bundle 'javaguirre/Pydiction'
Bundle 'git://github.com/nsf/gocode.git'
Bundle 'xolox/vim-notes.git'
"https://github.com/bkad/CamelCaseMotion.git
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "javaguirre/snipmate-snippets"
Bundle "garbas/vim-snipmate"
Bundle "vim-scripts/phpvim"
Bundle "ocim/htmljinja.vim"

filetype plugin on
filetype plugin indent on

set smartindent
set ruler
set showcmd
set number
set cursorline
set cursorcolumn
set smartcase
set incsearch
set hlsearch
set gfn=Monaco

syntax on

if has("gui_running")
  colorscheme solarized
  set bg=light
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
"let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"tmux"
"nnoremap <Esc>A <up>
"nnoremap <Esc>B <down>
"nnoremap <Esc>C <right>
"nnoremap <Esc>D <left>
"inoremap <Esc>A <up>
"inoremap <Esc>B <down>
"inoremap <Esc>C <right>
"inoremap <Esc>D <left>

"Exec python"
"map <buffer> <S-e> :w<CR>:!/usr/bin/env python2 % <CR>
let twitvim_enable_python = 1
let twitvim_api_root = "https://api.twitter.com/1"
let twitvim_count = 50
let twitvim_browser_cmd="chromium"
let g:notes_directory = '~/Documentos/vim_notes'
let g:notes_suffix = '.md'
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.twig set syntax=htmljinja

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
