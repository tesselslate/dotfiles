-- neovim config
-- init.lua

require("impatient")

-- the basics
require("commands")
require("keybindings")
require("plugins")
require("options")

-- load colors
require("theme-wrapper").load()

-- plugin settings
require("settings.gitsigns")
require("settings.lsp")
require("settings.cmp")
require("settings.nvim-tree")
require("settings.telescope")
require("settings.treesitter")
require("settings.which-key")
require("settings.feline")
require("settings.mini")
require("settings.etc")

-- filetype.lua
vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0
