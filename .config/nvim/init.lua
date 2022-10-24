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

-- load colorscheme and statusline
require("colors")
require("settings.feline").load()
