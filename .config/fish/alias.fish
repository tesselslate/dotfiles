# dotfiles
alias dg=dotgit
alias dotgit="git --git-dir=$HOME/src/dotfiles/ --work-tree=$HOME"

# general
alias lock="i3lock -i ~/.config/desktop/backgrounds/pixel-market.png -t"
alias ls="eza -l --icons --group-directories-first"
alias startx="startx ~/.config/x11/xinitrc"
alias xbindkeys="xbindkeys -f ~/.config/x11/xbindkeys"
alias yay="yay --sudo doas"

# git
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gds="git diff --staged"
alias gl="git log --color --oneline --no-decorate | head -n 6"
alias gp="git push"
alias gs="git status -s -b && echo '' && gl"
