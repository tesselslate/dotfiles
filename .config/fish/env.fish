# xdg folders
set -x XDG_CONFIG_HOME      $HOME/.config
set -x XDG_CACHE_HOME       $HOME/.cache
set -x XDG_DATA_HOME        $HOME/.local/share
set -x XDG_STATE_HOME       $HOME/.local/state

set -x XDG_DESKTOP_DIR      $HOME/documents/desktop
set -x XDG_DOCUMENTS_DIR    $HOME/documents
set -x XDG_DOWNLOAD_DIR     $HOME/downloads
set -x XDG_MUSIC_DIR        $HOME/music
set -x XDG_PICTURES_DIR     $HOME/pictures
set -x XDG_VIDEOS_DIR       $HOME/videos

# default programs
set -x EDITOR               nvim
set -x PAGER                less

# xorg theme variables
set -x XCURSOR_THEME        ArcStarry
set -x XCURSOR_PATH         ~/.local/share/icons

# move annoying folders out of $HOME
set -x GTK2_RC_FILES        $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -x XAUTHORITY           $XDG_DATA_HOME/Xauthority
set -x _JAVA_OPTIONS        -Djava.util.prefs.userRoot="$XDG_DATA_HOME"/java

# path
fish_add_path ~/.local/bin
