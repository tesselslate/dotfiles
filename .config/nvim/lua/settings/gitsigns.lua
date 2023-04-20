-- neovim config
-- settings/gitsigns.lua

local gitsigns = require("gitsigns")
gitsigns.setup({
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,

    preview_config = {
        border = "rounded"
    },
    signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
    }
})
