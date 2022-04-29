function fzfcd
    set __res (fd -t d -H | fzf)
    if test $status -ne 0
        commandline -f repaint
        return
    end

    cd $__res
    commandline -f repaint; fish_vi_key_bindings
end
