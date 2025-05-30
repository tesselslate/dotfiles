function __handle_dirfuncs --on-variable PWD
    if string match -q "$HOME/src/sandbox/comp/advent/2*" "$PWD"
        function r
            python3 $HOME/src/sandbox/comp/advent/run.py $argv
        end

        function g
            python3 $HOME/src/sandbox/comp/advent/dl.py $argv
        end
    else
        functions --erase r
        functions --erase g
    end
end
