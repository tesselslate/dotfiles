function fzf_history
    set __buf (commandline -b)
    set __fzfres (history | fzf --query="$__buf")

    # if not successful, do nothing
    if test $status -ne 0
        commandline -f repaint
        return
    end

    # set new commandline buffer
    commandline -r "$__fzfres"; commandline -f repaint
end
