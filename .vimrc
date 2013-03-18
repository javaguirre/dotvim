"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'kana/vim-smartinput'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/comments.vim'
Bundle 'vim-scripts/TwitVim'
Bundle 'groenewege/vim-less'
Bundle 'timcharper/textile.vim'
Bundle 'git://github.com/nsf/gocode.git'
Bundle 'xolox/vim-notes.git'
Bundle "vim-scripts/phpvim"
Bundle "ocim/htmljinja.vim"
Bundle 'kchmck/vim-coffee-script'
Bundle 'eglimi/vim-rust'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/closetag.vim'
Bundle 'nvie/vim-flake8'
Bundle 'airblade/vim-gitgutter'
Bundle 'davidhalter/jedi-vim'
Bundle 'vim-scripts/UltiSnips'

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
set gfn=Monaco\ for\ Powerline
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
"autocmd BufWritePost *.py call Flake8()

"Keys"
nmap <F2> :NERDTree<CR>
imap <F2> :Vex<CR>
nmap <F3> :TlistToggle<CR>
imap <F3> :TlistToggle<CR>
nmap <Leader>o :set paste!<CR>
nmap <Leader>c :%s/\s\+$<CR>
nmap <Leader>b :b#<CR>
nmap ; :CtrlPBuffer<CR>

" Shortcuts for moving between tabs.
" Alt-j to move to the tab to the left
noremap <A-j> gT
" Alt-k to move to the tab to the right
noremap <A-k> gt
"Autocomplete"
"imap <c-space> <c-x><c-o>

"ctrlp
":let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

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
au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.twig set syntax=htmljinja
au BufRead,BufNewFile *.tpl set syntax=html
au BufRead,BufNewFile *.jsm set syntax=javascript
au BufRead,BufNewFile *.rb set tabstop=2
au BufRead,BufNewFile *.rb set shiftwidth=2

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"Jedi
let g:jedi#popup_on_dot = 0
