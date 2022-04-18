# -----------------------------
# == insert mode
# -----------------------------

# ctrl-backspace => delete word
bind -M insert  \cH backward-kill-word

# ctrl-f => insert fzf result
bind -M insert  \cf 'infzf'

# ctrl-p => fzf and cd
bind -M insert  \ck 'cd (fd -t d -H | fzf); commandline -f repaint; fish_vi_key_bindings'

# ctrl-hjkl => arrows
bind -M insert  \b backward-char
bind -M insert  \n down-line
bind -M insert  \v up-line
bind -M insert  \f forward-char

# ctrl-o => open lf
bind -M insert  \co 'lfcd'

# ctrl-x => normal mode
bind -M insert  \cx 'set fish_bind_mode default; commandline -f repaint;'

# -----------------------------
# == normal mode
# -----------------------------

# copy/paste binds
bind -M default yy  fish_clipboard_copy
bind -M default y   fish_clipboard_copy
bind -M default p   fish_clipboard_paste

# ctrl-p => fzf and cd
bind -M default \cp 'cd (fd -t d -H | fzf); commandline -f repaint; fish_vi_key_bindings'

# ctrl-o => open lf
bind -M default \cf 'lfcd'
