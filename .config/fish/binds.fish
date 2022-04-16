# delete word (ctrl-backspace)
bind -M insert \cH backward-kill-word

# lfcd (ctrl-f)
bind -M default \cf 'lfcd; commandline -f repaint'
