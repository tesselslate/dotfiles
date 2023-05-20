# xdg folders
set -x XDG_CONFIG_HOME              $HOME/.config
set -x XDG_CACHE_HOME               $HOME/.cache
set -x XDG_DATA_HOME                $HOME/.local/share
set -x XDG_STATE_HOME               $HOME/.local/state

set -x XDG_DESKTOP_DIR              $HOME/doc/desktop
set -x XDG_DOCUMENTS_DIR            $HOME/doc
set -x XDG_DOWNLOAD_DIR             $HOME/dl
set -x XDG_MUSIC_DIR                $HOME/music
set -x XDG_PICTURES_DIR             $HOME/pix
set -x XDG_VIDEOS_DIR               $HOME/vid

# fish cursor
set fish_cursor_insert line

# default programs
set -x EDITOR                       nvim
set -x PAGER                        less

# xorg theme variables
set -x XCURSOR_THEME                Breeze
set -x XCURSOR_PATH                 ~/.local/share/icons

# move annoying folders out of $HOME
set -x CARGO_HOME                   $XDG_DATA_HOME/cargo
set -x RUSTUP_HOME                  $XDG_DATA_HOME/rustup
set -x GOPATH                       $XDG_DATA_HOME/go
set -x NUGET_PACKAGES               $XDG_CACHE_HOME/nuget

set -x GTK2_RC_FILES                $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -x XAUTHORITY                   $XDG_DATA_HOME/Xauthority

set -x __GL_SHADER_DISK_CACHE_PATH  $XDG_CACHE_HOME/nv

# i hate java
set -x AWT_TOOLKIT                  MToolkit
set -x _JAVA_OPTIONS                -Djava.util.prefs.userRoot="$XDG_DATA_HOME"/java
set -x _JAVA_OPTIONS                $_JAVA_OPTIONS "-Dswing.aatext=TRUE"
set -x _JAVA_OPTIONS                $_JAVA_OPTIONS "-Dawt.useSystemAAFontSettings=on"
set -x _JAVA_OPTIONS                $_JAVA_OPTIONS "-Duser.home=/home/dog/.local/share/home-ext"
set -x _JAVA_AWT_WM_NONREPARENTING  1

# i hate dotnet
set -x DOTNET_CLI_TELEMETRY_OPTOUT  1
