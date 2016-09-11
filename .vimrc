"        ________ ++     ________
"       /VVVVVVVV\++++  /VVVVVVVV\
"       \VVVVVVVV/++++++\VVVVVVVV/
"        |VVVVVV|++++++++/VVVVV/'
"        |VVVVVV|++++++/VVVVV/'
"       +|VVVVVV|++++/VVVVV/'+
"     +++|VVVVVV|++/VVVVV/'+++++
"   +++++|VVVVVV|/VVVVV/'+++++++++
"     +++|VVVVVVVVVVV/'+++++++++
"       +|VVVVVVVVV/'+++++++++
"        |VVVVVVV/'+++++++++
"        |VVVVV/'+++++++++
"        |VVV/'+++++++++
"        'V/'   ++++++
"                 ++
"
" Vundle Plugin Manager
set nocompatible              " be iMproved, required
filetype off                  " required

" Keep Plugin commands between plug#begin/end.
call plug#begin('~/.vim/plugged')

" Let Plug manager plugins, required
Plug 'junegunn/vim-plug'

" A plugin which allows you to use <Tab> for all your insert completion needs
Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"

" A file-type sensible comments for Vim.
Plug 'tomtom/tcomment_vim'

" A plugin to display the git options
Plug 'tpope/vim-fugitive'

" A code-completion engine for Vim
" Plug 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_global_ycm_extra_conf ='~/.ycm_extra_conf.py'
let g:loaded_youcompleteme = 1

" a code-completion engine for c/c++
"Plug 'Rip-Rip/clang_complete'
"let g:clang_user_options='|| exit 0'

" A plugin to auto close brackets
Plug 'jiangmiao/auto-pairs'

" A plugin to auto complete based in cache of words in buffer.
Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" A plugin to see the colors directly in vim
Plug 'gorodinskiy/vim-coloresque'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'

" A pack of colorschemes for vim.
Plug 'flazz/vim-colorschemes'

" This plugin provides a start screen for Vim and Neovim.
Plug 'mhinz/vim-startify'

" This plugin causes all trailing whitespace to be highlighted in red.
Plug 'bronson/vim-trailing-whitespace'

" A plugin that provides support for writing LaTeX documents.
" Plug 'lervag/vimtex'

" A much simpler way to use some motions in vim
Plug 'easymotion/vim-easymotion'

" A simple, easy-to-use Vim alignment plugin.
"	Plug 'junegunn/vim-easy-align'

" Additional vim c++ syntax highlighting.
Plug 'octol/vim-cpp-enhanced-highlight'

" Syntax checking plugin for Vim.
Plug 'scrooloose/syntastic'

" Permit to tab-complete words while typing in a search.
Plug 'vim-scripts/SearchComplete'

" The NERD tree allows you to explore your filesystem and to open files and directories.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end() " required

" To ignore plugin indent changes, instead use:
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

" Use airline plugin in all windows
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" Configure the minimum number of tabs needed to show the tabline.
"let g:airline#extensions#tabline#tab_min_count = 2

" Visual autocomplete for command menu
set wildmenu

" Make backspace work like most other apps
set backspace=2

" Set syntax
syntax on

" Set autoindent
set ai

"	Show (partial) command in the last line of the screen.
set showcmd

" Set autoindent for C language
set cindent

" Use the clipboard from the system in VIM
set clipboard=unnamedplus

" Highlight current line
set cursorline
set cursorcolumn

" Tab navigation
nnoremap H gT
nnoremap L gt

" AutoClose
imap < <><left>

" Move lines like in atom
nnoremap <c-s-j> :m .+1<CR>==
nnoremap <c-s-k> :m .-2<CR>==
inoremap <c-s-j> <Esc>:m .+1<CR>==gi
inoremap <c-s-k> <Esc>:m .-2<CR>==gi
vnoremap <c-s-j> :m '>+1<CR>gv=gv
vnoremap <c-s-k> :m '<-2<CR>gv=gv

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>

" Show a vertical line on column 80
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Changing the directory from temporary files
set swapfile
set dir=/tmp/
set backup
set backupdir=/tmp/
set undodir=/tmp/
set shiftwidth=2

" Encoding UTF-8.
set encoding=utf8

" Set ignorecase and smartcase in search
set ignorecase
set smartcase

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Option for tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab

" Colors configs
set background=dark
colorscheme monokai " Put the monokai.vim file in .vim/color
set t_Co=256

" Set numbers in lines of file
set number

" Highlight matching [{()}]
set showmatch

" Save with ctrl+s

" Set F2 button to call NerdTree
map <F2> :NERDTreeToggle<CR>

" Set F3 button to indent all the file
map <F3> mzgg=G`z

"Remove all trailing whitespace by pressing F4
nnoremap <F4> :let s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=s<Bar><CR>

let g:startify_custom_header = [
  \ '  ======================================================',
  \ '                                _________  __  __',
  \ '            __                 /\_____   \/\ \/\ `\',
  \ '   __   __ /\_\    ___ ___     \/____/   /\ \ \ \  \',
  \ '  /\ \ /\ \\/\ \ /` __` __`\        /   /  \ \ \_\  \__',
  \ '  \ \ \_/ / \ \ \/\ \/\ \/\ \      /   / __ \ \___   __\',
  \ '   \ \___/   \ \_\ \_\ \_\ \_\    /\__/ /\_\ \/___/\_\_/',
  \ '    \/__/     \/_/\/_/\/_/\/_/    \/_/  \/_/      \/_/',
  \ '',
  \ '  ======================================================',
  \ ]

let g:startify_custom_footer = [
  \ '',
  \ '  ======================================================',
  \ '',
  \ '  Copyleft',
  \ ]

let g:startify_bookmarks = [
  \ '~/.vimrc',
  \ '~/.bashrc',
  \ '~/Dropbox/UnB',
  \ '~/Dropbox/UnB/FSO',
  \ ]

let g:startify_list_order = [
    \ ['   These are my bookmarks:'],
    \ 'bookmarks',
    \ ['   My most recently:'],
    \ 'files',
    \ ['   Sessions:'],
    \ 'sessions',
    \ ['   Current Dir:'],
    \ 'dir',
    \ ]
