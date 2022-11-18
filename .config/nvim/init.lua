-- neovim config
-- init.lua

require("impatient")

-- the basics
require("commands")
require("keybindings")
require("plugins")
require("options")

-- plugin settings
require("settings.gitsigns")
require("settings.lsp")
require("settings.cmp")
require("settings.nvim-tree")
require("settings.telescope")
require("settings.treesitter")
require("settings.which-key")

require("leap").setup({
    safe_labels = {}
})

-- load colorscheme and statusline
require("tokyonight").setup({
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
    },
    dim_inactive = true,
    on_highlights = function(hl, c)
        hl.LineNr = {
            fg = c.fg_dark,
        }
    end
})
vim.cmd [[colorscheme tokyonight-moon]]
require("settings.feline").load()
