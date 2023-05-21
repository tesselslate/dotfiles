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
set -x FZF_DEFAULT_OPTS     "--height 60% --preview '' --cycle --layout=reverse --color=16,bg:-1,gutter:-1,hl:2,border:15,bg+:8 --no-scrollbar --border=none"
set -x FZF_DEFAULT_COMMAND  "fd --type f --hidden --exclude .git"

# -----------------------------
# == path
# -----------------------------

fish_add_path ~/.local/bin
fish_add_path ~/.local/shbin
fish_add_path ~/.local/share/cargo/bin
fish_add_path ~/.local/share/go/bin

# -----------------------------
# == login
# -----------------------------

if test "(tty)" = "/dev/tty1"
    # TODO: SWAYSOCK?
    pipewire &
    pipewire-pulse &
    wireplumber &
    dbus-run-session sway
end

# -----------------------------
# == alpine
# -----------------------------

if test "(hostname)" = "alpine"
	fish_add_path /sbin
	fish_add_path /usr/sbin
end

if test -z "$XDG_RUNTIME_DIR"
	set -x XDG_RUNTIME_DIR /tmp/(id -u)-runtime-dir
	mkdir -p $XDG_RUNTIME_DIR
	chmod 0700 $XDG_RUNTIME_DIR
end
