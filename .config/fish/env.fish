# xdg folders
set -x XDG_CONFIG_HOME              $HOME/.config
set -x XDG_CACHE_HOME               $HOME/.cache
set -x XDG_DATA_HOME                $HOME/.local/share
set -x XDG_STATE_HOME               $HOME/.local/state

set -x XDG_DESKTOP_DIR              $HOME/doc/desktop
set -x XDG_DOCUMENTS_DIR            $HOME/doc
set -x XDG_DOWNLOAD_DIR             $HOME/dl
set -x XDG_MUSIC_DIR                $HOME/doc/music
set -x XDG_PICTURES_DIR             $HOME/pix
set -x XDG_VIDEOS_DIR               $HOME/doc/vid

# etc
set -x RIPGREP_CONFIG_PATH          $XDG_CONFIG_HOME/ripgreprc

# fish cursor
set fish_cursor_insert line

# default programs
set -x EDITOR                       nvim
set -x PAGER                        less

# move annoying folders out of $HOME
set -x CARGO_HOME                   $XDG_DATA_HOME/cargo
set -x DOTNET_CLI_HOME              $XDG_DATA_HOME/dotnet
set -x GOPATH                       $XDG_DATA_HOME/go
set -x GTK2_RC_FILES                $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -x NUGET_PACKAGES               $XDG_CACHE_HOME/nuget
set -x OMNISHARPHOME                $XDG_DATA_HOME/omnisharp
set -x RUSTUP_HOME                  $XDG_DATA_HOME/rustup

# python
set -x PYTHONPYCACHEPREFIX          $XDG_CACHE_HOME/python
set -x PYTHONUSERBASE               $XDG_DATA_HOME/python

# java
set -x AWT_TOOLKIT                  MToolkit
set -x _JAVA_OPTIONS                -Djava.util.prefs.userRoot="$XDG_DATA_HOME"/java
set -x _JAVA_OPTIONS                $_JAVA_OPTIONS "-Dswing.aatext=TRUE"
set -x _JAVA_OPTIONS                $_JAVA_OPTIONS "-Dawt.useSystemAAFontSettings=on"
set -x _JAVA_OPTIONS                $_JAVA_OPTIONS "-Duser.home=/home/dog/.local/share/home-ext"
set -x _JAVA_AWT_WM_NONREPARENTING  1

# dotnet
set -x DOTNET_CLI_TELEMETRY_OPTOUT  1

# Cursor theme
set -x XCURSOR_PATH                 ~/.local/share/icons
set -x XCURSOR_SIZE                 32
set -x XCURSOR_THEME                BreezeX-Dark

# Wayland
set -x MOZ_ENABLE_WAYLAND           1
set -x QT_QPA_PLATFORM              wayland
set -x QT_QPA_PLATFORMTHEME         qt5ct

# Pipewire
set -x SDL_AUDIODRIVER              pipewire
