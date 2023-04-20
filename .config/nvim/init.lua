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
require("settings.colors")
require("settings.cmp")
require("settings.gitsigns")
require("settings.lsp")
require("settings.mini")
require("settings.telescope")
require("settings.treesitter")
require("settings.which-key")
