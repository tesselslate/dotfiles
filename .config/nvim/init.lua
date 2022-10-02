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
require("settings.mini")
require("settings.etc")

-- load colors
local theme_wrapper = require("theme-wrapper")
theme_wrapper.load()
theme_wrapper.watch()

-- load statusline
require("settings.feline").load()
