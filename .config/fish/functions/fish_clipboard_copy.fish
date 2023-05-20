function fish_clipboard_copy
    # Copy the current selection, or the entire commandline if that is empty.
    set -l cmdline (commandline --current-selection | string collect)
    test -n "$cmdline"; or set cmdline (commandline | string collect)
    if test $XDG_SESSION_TYPE = "wayland"
        printf '%s' $cmdline | wl-copy
    else
        printf '%s' $cmdline | xcopy -selection clipboard
    end
end
