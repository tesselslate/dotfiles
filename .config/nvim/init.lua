-- neovim config
-- init.lua

-- the basics
require("commands")
require("keybindings")
require("plugins")
require("options")

-- load colors
require("theme").load()

-- plugin settings
require("settings.gitsigns")
require("settings.lsp")
require("settings.lualine")
require("settings.mini")
require("settings.cmp")
require("settings.nvim-tree")
require("settings.telescope")
require("settings.treesitter")
require("settings.which-key")
