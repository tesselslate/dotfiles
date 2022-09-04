-- eeovim config
-- init.lua

require("impatient")

-- the basics
require("commands")
require("keybindings")
require("plugins")
require("options")

-- load colors
require("theme")

-- plugin settings
require("settings.gitsigns")
require("settings.lsp")
require("settings.cmp")
require("settings.nvim-tree")
require("settings.telescope")
require("settings.treesitter")
require("settings.which-key")

-- mini
require("mini.comment").setup({
    mappings = {
        comment = "gC",
        comment_line = "gc"
    }
})

require("mini.starter").setup({
    header = "neovim"
})

require("mini.tabline").setup({})
require("mini.trailspace").setup({})

-- dressing
require("dressing")

-- lightspeed
require("lightspeed").init_highlight(true)
