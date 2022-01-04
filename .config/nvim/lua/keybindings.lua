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

-- =============
-- normal mode
-- =============

-- lsp navigate diagnostics (ctrl + n / ctrl + p)
setkey("n", "<C-n>", ":lua vim.lsp.diagnostic.goto_next()<CR>")
setkey("n", "<C-p>", ":lua vim.lsp.diagnostic.goto_prev()<CR>")

-- leader key (space)
setkey("n", "<Space>", "<Nop>")
setkey("n", "<Space>", "<Leader>")

-- toggle nvim-colorizer (leader + c)
setkey("n", "<Leader>c", ":ColorizerToggle<CR>")

-- toggle relative line numbers (leader + r)
setkey("n", "<Leader>r", ":Rel<CR>")

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

-- write and close buffer (leader + shift + w)
setkey("n", "<Leader><S-w>", ":w | Bc<CR>")

-- buffer switching (tab / shift+tab)
setkey("n", "<Tab>", ":bnext<CR>")
setkey("n", "<S-Tab>", ":bprev<CR>")

-- disable arrow keys
local keys = { "<Up>", "<Down>", "<Right>", "<Left>" };
for _,k in ipairs(keys) do
    setkey("n", k, "<Nop>")
    setkey("i", k, "<Nop>")
end

-- =============
-- visual mode
-- =============

-- stay in visual mode while indenting
setkey("v", "<", "<gv")
setkey("v", ">", ">gv")
