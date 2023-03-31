# -----------------------------
# == insert mode
# -----------------------------

# ctrl-backspace => delete word
bind -M insert  \cH backward-kill-word

# ctrl-e => edit command
bind -M insert  \ce edit_command_buffer

# ctrl-f => insert fzf result
bind -M insert  \cf fzf_paste

# ctrl-j => insert fzf history
bind -M insert  \cj fzf_history

# ctrl-p => fzf and cd
bind -M insert  \cp fzf_cd

# ctrl-l => right arrow
bind -M insert  \f forward-char

# ctrl-o => open lf
bind -M insert  \co lfcd

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

# ctrl-j => insert fzf history
bind -M insert  \cj fzf_history

# ctrl-p => fzf and cd
bind -M default \cp fzf_cd

# ctrl-o => open lf
bind -M default \cf lfcd
