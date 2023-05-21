-- neovim config
-- init.lua

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
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
