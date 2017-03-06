set background=dark
colors koehler
syntax on
filetype plugin indent on
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set ignorecase smartcase

set formatoptions-=r
set formatoptions-=c
set formatoptions-=o

hi TabLineSel ctermfg=White ctermbg=DarkRed
hi TabLine ctermfg=White ctermbg=DarkGreen
hi TabLineFill ctermfg=White ctermbg=DarkGreen
hi TabLineStatusLine ctermfg=White ctermbg=DarkGreen
hi StatusLine ctermfg=White ctermbg=DarkGreen
hi StatusLineFill ctermfg=White ctermbg=DarkGreen
hi Directory ctermfg=LightGreen
hi CursorLine ctermbg=None ctermfg=Yellow

if has('persistent_undo')
    set undodir=$HOME/.vim/undo
    set undolevels=10000
    set undofile
endif

match Error /\%101v.\+/
execute pathogen#infect()

set nocompatible        
filetype off           

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

