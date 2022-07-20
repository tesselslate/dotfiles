function fzfcd
    # get last word of commandline
    set __buf (commandline -b)
    set __words (string split ' ' $__buf)
    set __last_word $__words[-1]

    if test (string length $__last_word) = 0
        set __res (fd -t d -H | sed -E 's|^\./||' | fzf)
    else if test (string sub -l 1 $__last_word) = '/'
        set __res (fd -t d -H . / | sed -E 's|^\./||' | fzf -q "$__last_word")
        commandline -f kill-whole-line
    else
        set __res (fd -t d -H | sed -E 's|^\./||' | fzf -q "$__last_word")
        commandline -f kill-whole-line
    end

    if test $status -ne 0
        commandline -f repaint
        return
    end

    cd $__res
    commandline -f repaint; fish_vi_key_bindings
end
