-- neovim config
-- init.lua

-- the basics
require("commands")
require("keybindings")
require("plugins")
require("options")

-- plugin settings
require("settings.feline")
require("settings.gitsigns")
require("settings.lsp")
require("settings.mini")
require("settings.nvim-cmp")
require("settings.nvim-tree")
require("settings.nvim-treesitter")
require("settings.telescope")
require("settings.which-key")

require("lua.colors.init").load("tokyonight_storm")
