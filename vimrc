set nocompatible
filetype plugin indent on

set path+=**
set wildmenu
set number

set tabstop=5
set shiftwidth=5

set foldmethod=syntax
nnoremap <TAB> za

syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'airblade/vim-gitgutter'

Plugin 'c.vim'

Plugin 'rust-lang/rust.vim'

Plugin 'ekalinin/dockerfile.vim'

Plugin 'wlangstroth/vim-racket'

Plugin 'paredit.vim'

Plugin 'Valloric/YouCompleteMe'

Bundle 'edkolev/promptline.vim'

call vundle#end()

set laststatus=2
set ttimeoutlen=50

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
set t_Co=512

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

set splitbelow
set splitright

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

set background=dark

" YCM

set encoding=utf-8
let g:ycm_server_python_interpreter="/usr/bin/python2"
let g:ycm_extra_conf_globlist = ['~/Stevens/CS 392 - Systems Programming/*']

" Templates

autocmd BufNewFile *.rkt r ~/.vim/templates/template.rkt

autocmd bufnewfile *.html so ~/.vim/templates/template.html

autocmd bufnewfile Makefile so ~/.vim/templates/c/MakefileTemplate
autocmd bufnewfile Makefile cal cursor(1, 13)

" Snippets

imap <buffer> ;for <C-O>mzfor(%%%; %%%; %%%){<CR>%%%<C-O>'z;;
imap <buffer> ;if <C-O>mzif(%%%){<CR>%%%<C-O>'z;;
imap <buffer> ;while <C-O>mzwhile(%%%){<CR>%%%<C-O>'z;;

imap <buffer> ;; <C-O>/%%%<cr><C-O>c3l
nmap <buffer> ;; /%%%<CR>c3l
set exrc

