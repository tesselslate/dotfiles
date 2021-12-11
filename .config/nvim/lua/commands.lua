-- neovim config
-- commands.lua

-- Bc - close current buffer without closing window
vim.cmd [[ command Bc bp | sp | bn | bd ]]

-- Bterm - spawn a terminal at the bottom of the screen
vim.cmd [[
    command Bterm lua require("helpers/terminal").bottom_terminal()
]]

-- DiffviewToggle - toggle diffview because diffview.nvim doesn't have this
vim.cmd [[
    function DV_Toggle()
        if &filetype == 'DiffviewFiles'
            :DiffviewClose
        else
            :DiffviewOpen
        endif
    endfunction

    command DiffviewToggle eval DV_Toggle()
]]

-- Rel - toggle relative line numbers
vim.cmd [[ 
    command Rel if &relativenumber | set relativenumber& | else | set relativenumber | endif
]]

-- Run - run a `run.sh` file if it exists
vim.cmd [[
    command Run :!bash run.sh
]]

-- Terminal - spawn floating terminal
vim.cmd [[
    command Terminal lua require("helpers/terminal").floating_terminal()
]]

-- Wbc - write current buffer contents and close
vim.cmd [[ command Wbc w | Bc ]]
