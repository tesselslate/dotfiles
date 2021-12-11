-- neovim config
-- keybindings.lua

-- =============
-- insert mode
-- =============

-- delete previous word (ctrl+backspace)
vim.api.nvim_set_keymap("i", "<C-H>", "<C-w>", { silent = true })

-- =============
-- normal mode
-- =============

-- leader key (space)
vim.api.nvim_set_keymap("n", "<Space>", "<Nop>", { silent = true })
vim.api.nvim_set_keymap("n", "<Space>", "<Leader>", { silent = true })

-- open file tree (leader + t)
vim.api.nvim_set_keymap("n", "<Leader>t", ":NvimTreeToggle<CR>", { silent = true })

-- open floating terminal (leader + enter)
vim.api.nvim_set_keymap("n", "<Leader><CR>", ":Terminal<CR>", { silent = true })

-- open live grep (leader + f)
vim.api.nvim_set_keymap("n", "<Leader>f", ":Telescope live_grep<CR>", { silent = true })

-- switch window (leader + tab)
vim.api.nvim_set_keymap("n", "<Leader><Tab>", ":wincmd w<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader><S-Tab>", ":wincmd W<CR>", { silent = true })

-- close buffer (leader + w)
vim.api.nvim_set_keymap("n", "<Leader>w", ":Bc<CR>", { silent = true })

-- buffer switching (tab / shift+tab)
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

-- disable arrow keys
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { silent = true })
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { silent = true })
