-- neovim config
-- init.lua

-- the basics
require("commands")
require("keybindings")
require("plugins")
require("options")

-- plugin settings
require("settings/bufferline")
require("settings/gitsigns")
require("settings/lsp")
require("settings/nvim-cmp")
require("settings/nvim-tree")
require("settings/nvim-treesitter")
require("settings/telescope")
require("settings/tokyonight")
require("settings/which-key")

-- load lualine last, as it depends on tokyonight config
require("settings/lualine")
