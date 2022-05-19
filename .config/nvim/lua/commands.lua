-- neovim config
-- commands.lua

-- Rel - toggle relative line numbers
vim.cmd [[ 
    command Rel if &relativenumber | set relativenumber& | else | set relativenumber | endif
]]
