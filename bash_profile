[[ -f ~/.bashrc ]] && . ~/.bashrc

[ "$(tty)" = "/dev/tty1" ] && XDG_CURRENT_DESKTOP=sway GTK_IM_MODULE=kime QT_IM_MODULE=kime XMODIFIERS="@im=kime" sway
