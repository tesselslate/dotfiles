# this is just a simplified version of one of the default prompts
# i forget the name

function fish_right_prompt
    set -l cmd_status $status
    if test $cmd_status -ne 0
        echo -n (set_color red)"$cmd_status "
    end

    if not set -l git_dir (command git rev-parse --git-dir 2>/dev/null)
        set_color normal
        return
    end

    if test $git_dir = "."
        set git_cmd dotgit
    else
        set git_cmd git
    end

    set commit ($git_cmd rev-parse HEAD 2>/dev/null | string sub -l 7)
    set branch ($git_cmd rev-parse --symbolic-full-name --abbrev-ref HEAD)

    if test $cmd_status -ne 0
        echo -n "❯ "
    end

    echo -n (set_color green)"$branch @ $commit"
end
