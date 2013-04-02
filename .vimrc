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
Bundle 'groenewege/vim-less'
Bundle 'timcharper/textile.vim'
Bundle 'nsf/gocode'
Bundle 'xolox/vim-notes'
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
Bundle 'joedicastro/vim-sparkup'
Bundle 'Rykka/colorv.vim'
Bundle 'vimez/vim-tmux'
Bundle 'Yggdroot/indentLine'
Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-commentary'

filetype plugin on
filetype plugin indent on

scriptencoding utf-8
set encoding=utf-8
set visualbell
set ttyfast
set lazyredraw
set autoread
set textwidth=80

set smartindent
set ruler
set showcmd
set number
set cursorline
set cursorcolumn

" Search
set smartcase
set incsearch
set hlsearch
set ignorecase
" END Search

" History
set history=1000
" END History

" Wildmenu
set wildmenu " Autocompletado de la linea de comandos.
set wildmode=list:longest,full " Muestra una lista de todas las opciones.

set wildignore+=.hg,.git,.svn " Version control
set wildignore+=*.sw? " Vim swap files
set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~ " Backup files
set wildignore+=*.luac " Lua byte code
set wildignore+=*.jar " java archives
set wildignore+=*.pyc " Python byte code
set wildignore+=*.stats " Pylint stats
" END Wildmenu

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
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


"Keys"
nmap <F2> :NERDTree<CR>
imap <F2> :Vex<CR>
nmap <F3> :TlistToggle<CR>
imap <F3> :TlistToggle<CR>
nmap <Leader>P :set paste!<CR>
nmap <Leader>c :%s/\s\+$<CR>
nmap <Leader>b :b#<CR>
map <Leader>h :nohlsearch<CR>
nmap ; :CtrlPBuffer<CR>

" Windows as in my tmux conf
nnoremap <leader>\| <C-w>v
nnoremap <leader>\- <C-w>s

" Copy/paste clipboard
map <Leader>y "*y
map <Leader>p "*p

" Save as root
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

" Custom options per filetype
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.twig set syntax=htmljinja
au BufRead,BufNewFile *.tpl set syntax=html
au BufRead,BufNewFile *.jsm set syntax=javascript
au BufRead,BufNewFile *.rb set tabstop=2
au BufRead,BufNewFile *.rb set shiftwidth=2

" PLUGINS

let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" TwitVim
let twitvim_enable_python = 1
let twitvim_api_root = "https://api.twitter.com/1"
let twitvim_count = 50
let twitvim_browser_cmd="firefox"
let g:notes_directory = '~/Documentos/vim_notes'
let g:notes_suffix = '.md'

" Jedi
let g:jedi#popup_on_dot = 0

" ColorV
let g:colorv_cache_file=$HOME.'/.vim/tmp/vim_colorv_cache'
let g:colorv_cache_fav=$HOME.'/.vim/tmp/vim_colorv_cache_fav'

" IndentLine
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_min_keyword_length = 2
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_max_list = 30
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 2
let g:neocomplcache_temporary_dir = $HOME.'/.vim/tmp/neocomplcache'

" Commentary
nmap <C-c> <Plug>CommentaryLine
xmap <C-c> <Plug>Commentary
