set background=dark
colors koehler
syntax on
filetype plugin indent on
set number
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set ignorecase smartcase
autocmd BufWinEnter * NERDTreeMirror
hi TabLineSel ctermfg=White ctermbg=DarkRed
hi TabLine ctermfg=White ctermbg=DarkGreen
hi TabLineFill ctermfg=White ctermbg=DarkGreen
hi TabLineStatusLine ctermfg=White ctermbg=DarkGreen
hi StatusLine ctermfg=White ctermbg=DarkGreen
hi StatusLineFill ctermfg=White ctermbg=DarkGreen
hi Directory ctermfg=LightGreen
hi CursorLine ctermbg=None ctermfg=Yellow
au VimEnter *  NERDTree

match Error /\%101v.\+/
execute pathogen#infect()

set nocompatible        
filetype off           

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

