-- neovim config
-- options.lua

-- tab settings
vim.opt.expandtab   = true          -- spaces instead of tabs
vim.opt.shiftwidth  = 4             -- indentation length
vim.opt.softtabstop = 4             -- tab length
vim.opt.tabstop     = 4

-- text settings
vim.opt.cursorline  = true          -- highlight current line
vim.opt.clipboard   = "unnamedplus" -- use system clipboard
vim.opt.encoding    = "utf-8"       -- text encoding
vim.opt.number      = true          -- line numbers

-- miscellaneous settings
vim.opt.mouse       = "a"           -- enable mouse
vim.opt.signcolumn  = "yes"         -- always enable sign column

-- set diffview background character
vim.opt.fillchars = vim.opt.fillchars + "diff:╱"

-- get rid of automatic comment expansion
vim.cmd[[autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]
