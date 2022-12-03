-- neovim config
-- options.lua

-- tab settings
vim.opt.expandtab       = true              -- spaces instead of tabs
vim.opt.shiftwidth      = 4                 -- indentation length
vim.opt.softtabstop     = 4                 -- tab length
vim.opt.tabstop         = 4

-- text settings
vim.opt.cursorline      = true              -- highlight current line
vim.opt.clipboard       = "unnamedplus"     -- use system clipboard
vim.opt.encoding        = "utf-8"           -- text encoding
vim.opt.number          = true              -- line numbers
vim.opt.wrap            = false             -- don't wrap lines

-- scroll settings
vim.opt.scrolloff       = 8                 -- vertical scroll padding
vim.opt.sidescrolloff   = 8                 -- horizontal scroll padding

-- search settings
vim.opt.ignorecase      = true              -- ignore letter case when searching
vim.opt.smartcase       = true              -- improve ignorecase behavior

-- miscellaneous settings
vim.opt.signcolumn      = "yes"             -- always enable sign column
vim.opt.laststatus      = 3                 -- global status
vim.opt.showmode        = false             -- don't put --INSERT-- etc at bottom
vim.opt.swapfile        = false             -- disable swapfile
vim.opt.undofile        = true              -- undo across restarts
vim.opt.termguicolors   = true              -- use more than 256 colors
vim.opt.lazyredraw      = true              -- dont redraw when using macros
vim.opt.nrformats       = "bin,hex,alpha"   -- allow for using inc/dec on letters

-- completeopt
-- menuone: popup, even if there's only one match
-- noinsert: do not change text until confirmation
-- noselect: do not autoselect
vim.opt.completeopt     = "menuone,noinsert,noselect"

-- get rid of automatic comment expansion
vim.cmd[[autocmd FileType * set formatoptions-=cro]]
