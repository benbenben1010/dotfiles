"
" Mode settings.
"
set nocompatible " Disallow vi compatibility mode.
filetype plugin on " Enable filetype plugin
filetype indent on

"
" Random visual environment setup.
"
"set virtualedit=all " Allow cursor anywhere.
set so=20 " Scroll 10 lines ahead of cursor.
set vb t_vb= " Flash the screen instead of beeping on failed commands.
set wildmode=longest:full wildmenu " Fix tab-completion to be more bash-like.
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
" set textwidth=80
set number showcmd ruler

"
" Colors.
"
syntax on
let xterm16_colormap = 'soft'
let xterm16_brightness = 'high'
set t_Co=256
" color xterm16
color zenburn
" color darkburn
"
" Input.
"
set mouse=a
set backspace=indent,eol,start

"
" Keymappings.
"
let mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>t :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" Change buffers.                
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Cd to directory containing current buffer.
map <leader>cd :cd %:p:h<cr>
" Turn on spellcheck.
map <leader>ss :setlocal spell!<cr>
map <F3> :NERDTreeToggle<cr>
map <F4> :TlistToggle<cr>

"
" Searching.
"
set incsearch
set showmatch " Jump to matching brackets.
set ignorecase smartcase " Ignore case iff in all lowercase.

"
" Autoformatting.
"
set tabstop=2 shiftwidth=2 expandtab smarttab " Tabbing.
set autoindent smartindent " Autoindent.
set formatoptions+=tcrqn

"
" Tags.
"
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

"
" Environment-specific settings.
"
if &diff " Setup for diff environment.
else " Setup for normal environment.
endif


"
" Support functions.
"
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

set tags+=~/dev/dovecot-hg/dovecot-2.1/src/tags
set iskeyword-=_

set mouse=v
