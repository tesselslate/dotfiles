# -----------------------------
# == insert mode
# -----------------------------

# ctrl-backspace => delete word
bind -M insert  \cH backward-kill-word

# ctrl-f => insert fzf result
bind -M insert \cf 'infzf'

# ctrl-k => fzf and cd
bind -M insert  \ck 'cd (fd -t d -H | fzf); commandline -f repaint; fish_vi_key_bindings'

# ctrl-o => open lf
bind -M insert  \co 'lfcd'

# -----------------------------
# == normal mode
# -----------------------------

# copy/paste binds
bind -M default yy  fish_clipboard_copy
bind -M default y   fish_clipboard_copy
bind -M default p   fish_clipboard_paste

# ctrl-k => fzf and cd
bind -M default \ck 'cd (fd -t d -H | fzf); commandline -f repaint; fish_vi_key_bindings'

# ctrl-o => open lf
bind -M default \cf 'lfcd'
