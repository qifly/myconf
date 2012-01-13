colorscheme gentooish  "gentooish color 

"config for encodings
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,latin1
set termencoding=utf-8

set nocompatible
set number
set autochdir

filetype on
filetype plugin on
syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4

set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 11
set tags+=~/.vim/systags

"--configs for taglist

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=1

"--configs for omnicppcomplete

set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
