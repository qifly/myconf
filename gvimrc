syntax on
filetype plugin on
filetype indent on
set nu

color desert
set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 11

set enc=utf-8
set fenc=utf-8

scriptencoding utf-8
" ^^ Please leave the above line at the start of the file.

" Default configuration file for gvim
" $Header: /var/cvsroot/gentoo-x86/app-editors/gvim/files/gvimrc-r1,v 1.2 2010/04/15 19:49:14 darkside Exp $
"
" Written by Aron Griffis <agriffis@gentoo.org>
"
" This file is read AFTER normal Vim initializations, like reading your .vimrc
" file (and the default /usr/share/vim/vimrc).  So there's no reason to
" duplicate settings from vimrc.  Red Hat has had this wrong for years, to the
" great annoyance of users.

" Pre-GUI settings
set columns=120 lines=50       " don't inherit geometry from parent term
set mousemodel=popup          " right mouse button pops up a menu in the GUI

" Use a sufficiently wide window automatically when started as "gvimdiff"
if (&foldmethod == 'diff')
	set columns=165
endif

" For bug 33327, add a mapping which allows shift-insert to function
" as expected in insert and command-line modes
map! <s-insert> <c-r>*

if filereadable("/etc/vim/gvimrc.local")
  source /etc/vim/gvimrc.local
endif
