-- neovim config
-- keybindings.lua

local setkey = function (mode, key, bind)
    vim.api.nvim_set_keymap(mode, key, bind, { silent = true })
end

-- =============
-- insert mode
-- =============

-- delete previous word (ctrl + backspace)
setkey("i", "<C-H>", "<C-w>")

-- lsp hover (alt + h)
setkey("i", "<M-h>", "<cmd>lua vim.lsp.buf.hover()<CR>")

-- =============
-- normal mode
-- =============

-- lsp toggle diagnostic (ctrl + n / ctrl + p)
setkey("n", "<C-n>", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
setkey("n", "<C-p>", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")

-- leader key (space)
setkey("n", "<Space>", "<Nop>")
setkey("n", "<Space>", "<Leader>")

-- toggle nvim-colorizer (leader + c)
setkey("n", "<Leader>c", "<cmd>ColorizerToggle<CR>")

-- toggle relative line numbers (leader + r)
setkey("n", "<Leader>r", "<cmd>Rel<CR>")

-- open file tree (leader + t)
setkey("n", "<Leader>t", ":NvimTreeToggle<CR>")

-- open floating terminal (leader + enter)
setkey("n", "<Leader><CR>", ":Terminal<CR>")

-- open live grep (leader + f)
setkey("n", "<Leader>f", ":Telescope live_grep<CR>")

-- switch window (leader + tab)
setkey("n", "<Leader><Tab>", ":wincmd w<CR>")
setkey("n", "<Leader><S-Tab>", ":wincmd W<CR>")

-- close buffer (leader + w)
setkey("n", "<Leader>w", ":Bc<CR>")

-- buffer switching (tab / shift+tab)
setkey("n", "<Tab>", ":BufferLineCycleNext<CR>")
setkey("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")

-- disable arrow keys
setkey("n", "<Up>", "<Nop>")
setkey("n", "<Down>", "<Nop>")
setkey("n", "<Right>", "<Nop>")
setkey("n", "<Left>", "<Nop>")
