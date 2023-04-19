-- neovim config
-- init.lua

-- lazy.nvim
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup(require("plugins"))
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

-- load colorscheme and statusline
require("tokyonight").setup({
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
    },
    on_highlights = function(hl, c)
        hl.EndOfBuffer = {
            fg = nil,
        }
        hl.LineNr = {
            fg = c.fg_dark,
        }
    end
})
vim.cmd "colorscheme tokyonight-moon"
require("settings.feline").load()

-- misc plugins
vim.diagnostic.config({virtual_lines = false})
require("lsp_lines").setup()
