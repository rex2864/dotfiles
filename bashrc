[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH=$HOME/bin:$HOME/bin/kime:/usr/share/sway-contrib:$PATH
export LD_LIBRARY_PATH=$HOME/bin/kime:$LD_LIBRARY_PATH

alias cat='bat'
alias la='eza -lA'
alias ls='eza -l'
alias grep='grep --color=auto'

eval "$(fzf --bash)"
