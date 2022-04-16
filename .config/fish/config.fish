# enable vi mode
fish_vi_key_bindings

# -----------------------------
# == source config files
# -----------------------------

# color palette
source ~/.config/fish/colors.fish

# env variables
source ~/.config/fish/env.fish

# aliases
source ~/.config/fish/alias.fish

# bindings
source ~/.config/fish/binds.fish

# -----------------------------
# == options
# -----------------------------

# fzf options
set -x FZF_DEFAULT_OPTS     "--height 80% --preview 'bat --theme base16-256 --style=numbers --color=always --line-range :500 {}' --border=rounded --margin=0,1 --cycle --layout=reverse --color=16,bg:-1,gutter:-1,hl:2,border:15,bg+:8"
set -x FZF_DEFAULT_COMMAND  "fd --type f --hidden --exclude .git"

# -----------------------------
# == path
# -----------------------------

fish_add_path ~/.local/bin
fish_add_path ~/.local/shbin
fish_add_path ~/.local/share/cargo/bin
fish_add_path ~/.local/share/go/bin
