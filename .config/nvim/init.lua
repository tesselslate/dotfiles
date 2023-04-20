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
require("settings.telescope")
require("settings.treesitter")
require("settings.which-key")

-- load colorscheme
require("tokyonight").setup({
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
    },
    on_colors = function(c)
        c.git = {
            add    = "#c3e88d",
            change = "#6fbcff",
            delete = "#ff757f",
        }
        c.gitSigns = c.git

    end,
    on_highlights = function(hl, c)
        hl.EndOfBuffer = {
            fg = nil,
        }
        hl.LineNr = {
            fg = c.fg_dark,
        }
    end
})
vim.cmd("colorscheme tokyonight-moon")
