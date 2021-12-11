-- neovim config
-- commands.lua

-- Bc - close current buffer without closing window
vim.cmd [[ command Bc bp | sp | bn | bd ]]

-- Bterm - spawn a terminal at the bottom of the screen
vim.cmd [[
    command Bterm lua require("helpers/terminal").bottom_terminal()
]]

-- Rel - toggle relative line numbers
vim.cmd [[ 
    command Rel if &relativenumber | set relativenumber& | else | set relativenumber | endif
]]

-- Terminal - spawn floating terminal
vim.cmd [[
    command Terminal lua require("helpers/terminal").floating_terminal()
]]

-- Wbc - write current buffer contents and close
vim.cmd [[ command Wbc w | Bc ]]
