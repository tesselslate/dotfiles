-- neovim config
-- commands.lua

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
