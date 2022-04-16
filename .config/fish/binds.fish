# -----------------------------
# == insert mode
# -----------------------------

# ctrl-backspace => delete word
bind -M insert  \cH backward-kill-word

# ctrl-f => insert fzf result
bind -M insert  \cf 'commandline -i (fd -H | fzf); commandline -f repaint'

# -----------------------------
# == normal mode
# -----------------------------

# copy/paste binds
bind -M default yy  fish_clipboard_copy
bind -M default y   fish_clipboard_copy
bind -M default p   fish_clipboard_paste

# ctrl-f => fzf and cd
bind -M default \cf 'cd (fd -t d -H | fzf); commandline -f repaint; fish_vi_key_bindings'

# ctrl-o => open lf
bind -M default \co 'lfcd'
