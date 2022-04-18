function infzf
    # get last word of commandline
    set __last_word (string split ' ' (commandline -b))[-1]
    if test (string length $__last_word) = 0
        set __last_word .
    end

    # fzf
    commandline -i (fd -H . $__last_word | fzf); commandline -f repaint
end
