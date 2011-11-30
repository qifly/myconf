export LANG="zh_CN.UTF-8"
export LANGUAGE="zh_CN.UTF-8"

export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx

xrdb -merge ~/.Xresources

fcitx -d

exec ck-launch-session startlxde
