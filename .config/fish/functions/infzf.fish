function infzf
    # get last word of commandline
    set __buf (commandline -b)
    set __words (string split ' ' $__buf)
    set __last_word $__words[-1]

    if test (string length $__last_word) = 0
        set __last_word .
    end

    # get fzf result
    if test (string sub -l 1 $__last_word) = '~'
        set __fzfres (fd -H . $HOME | fzf)
    else if test -d $__last_word
        set __fzfres (fd -H . "$__last_word" | sed -E 's|^\./||' | fzf)
    else
        set __fzfres (fd -H . | sed -E 's|^\./||' | fzf -q "$__last_word")
    end

    # if not successful, do nothing
    if test $status -ne 0
        commandline -f repaint
        return
    end

    # set new commandline buffer
    if test (count $__words) -gt 1
        set __words $__words[1..(math (count $__words) - 1)]
        set -a __words $__fzfres
    else
        set __words $__fzfres
    end

    commandline -r "$__words"; commandline -f repaint
end
