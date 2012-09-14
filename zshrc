export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim

export PATH=$PATH:/usr/sbin:/sbin

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

# Created by newuser for 4.3.17
autoload colors
colors
# number of lines kept in history
export HISTSIZE=1000
# number of lines saved in the history after logout
export SAVEHIST=1000
# location of history
export HISTFILE=~/.zhistory
#以附加的方式写入历史纪录
setopt INC_APPEND_HISTORY
#如果连续输入的命令相同，历史纪录中只保留一个
setopt HIST_IGNORE_DUPS
#为历史纪录中的命令添加时间戳
setopt EXTENDED_HISTORY   

#启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTO_PUSHD
#相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS

#自动补全功能 {{{
setopt AUTO_LIST
setopt AUTO_MENU
#开启此选项，补全时会直接选中菜单项
#setopt MENU_COMPLETE

autoload -U compinit promptinit
compinit
promptinit
prompt gentoo
zstyle ':completion::complete:*' use-cache 1

#彩色补全菜单 
eval $(dircolors -b) 
export ZLSCOLORS="${LSCOLORS}"
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LSCOLORS}
zstyle ':completion:::kill::processes' list-colors '=(#b) #([0-9]#)=0=01;31'

# correction
setopt correctall
#错误校正      
zstyle ':completion:' completer _complete _match _approximate
zstyle ':completion::match:' original only
zstyle ':completion::approximate:*' max-errors 1 numeric

#功能键修正
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "eOH" beginning-of-line
bindkey "eOF" end-of-line
# for freebsd console
bindkey "e[H" beginning-of-line
bindkey "e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

alias ls="ls --color"
