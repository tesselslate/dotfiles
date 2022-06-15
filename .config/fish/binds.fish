# -----------------------------
# == insert mode
# -----------------------------

# ctrl-backspace => delete word
bind -M insert  \cH backward-kill-word

# ctrl-f => insert fzf result
bind -M insert  \cf 'infzf'

# ctrl-p => fzf and cd
bind -M insert  \cp 'fzfcd'

# ctrl-o => open lf
bind -M insert  \co 'lfcd'

# ctrl-x => normal mode
bind -M insert  \cx 'set fish_bind_mode default; commandline -f repaint;'

# unbind escape => normal mode
bind -M insert  \e ''

# -----------------------------
# == normal mode
# -----------------------------

# copy/paste binds
bind -M default yy  fish_clipboard_copy
bind -M default y   fish_clipboard_copy
bind -M default p   fish_clipboard_paste

# ctrl-p => fzf and cd
bind -M default \cp 'fzfcd'

# ctrl-o => open lf
bind -M default \cf 'lfcd'
