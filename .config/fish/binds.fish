# -----------------------------
# == insert mode
# -----------------------------

# ctrl-backspace => delete word
bind -M insert  ctrl-backspace  backward-kill-word

# ctrl-e => edit command
bind -M insert  ctrl-e          edit_command_buffer

# ctrl-f => insert fzf result
bind -M insert  ctrl-f          fzf_paste

# ctrl-j => insert fzf history
bind -M insert  ctrl-j          fzf_history

# ctrl-p => fzf and cd
bind -M insert  ctrl-p          fzf_cd

# ctrl-l => right arrow
bind -M insert  ctrl-l          forward-char

# ctrl-o => open lf
bind -M insert  ctrl-o          lfcd

# ctrl-x => normal mode
bind -M insert  ctrl-x          'set fish_bind_mode default; commandline -f repaint;'

# unbind escape => normal mode
bind -M insert  escape          ''

# -----------------------------
# == normal mode
# -----------------------------

# copy/paste binds
bind -M default yy  fish_clipboard_copy
bind -M default y   fish_clipboard_copy
bind -M default p   fish_clipboard_paste
