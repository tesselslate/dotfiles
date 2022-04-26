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

-- escape
setkey("i", "<C-x>", "<Esc>")

-- =============
-- normal mode
-- =============

-- == lsp ==
-- navigate diagnostics (ctrl + n / ctrl + p)
setkey("n", "<C-n>", ":lua vim.diagnostic.goto_next()<CR>")
setkey("n", "<C-p>", ":lua vim.diagnostic.goto_prev()<CR>")

-- rename (leader -> lr)
setkey("n", "<Leader>lr", ":lua vim.lsp.buf.rename()<CR>")

-- hover (leader -> lh)
setkey("n", "<Leader>lh", ":lua vim.lsp.buf.hover()<CR>")

-- format (leader -> lf)
setkey("n", "<Leader>lf", ":lua vim.lsp.buf.formatting()<CR>")

-- go to definition (gd)
setkey("n", "gd", ":lua vim.lsp.buf.definition()<CR>")

-- go to references (gr)
setkey("n", "gr", ":lua vim.lsp.buf.references()<CR>")

-- == other binds ==
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

-- open live grep (leader + fs)
setkey("n", "<Leader>fs", ":Telescope live_grep<CR>")

-- open file (leader + ff)
setkey("n", "<Leader>ff", ":Telescope find_files<CR>")

-- switch window (leader + tab)
setkey("n", "<Leader><Tab>", ":wincmd w<CR>")
setkey("n", "<Leader><S-Tab>", ":wincmd W<CR>")

-- buffer switching (tab / shift+tab)
setkey("n", "<Tab>", ":bnext<CR>")
setkey("n", "<S-Tab>", ":bprev<CR>")

-- lightspeed omnidirectional
setkey("n", "s", "<Nop>")
setkey("n", "S", "<Nop>")
setkey("n", "s", "<Plug>Lightspeed_omni_s")

-- close buffer (leader + w)
setkey("n", "<Leader>w", ":lua require('mini.bufremove').delete()<CR>")

-- disable arrow keys
local keys = { "<Up>", "<Down>", "<Right>", "<Left>" };
for _,k in ipairs(keys) do
    setkey("n", k, "<Nop>")
end

-- =============
-- visual mode
-- =============

-- stay in visual mode while indenting
setkey("v", "<", "<gv")
setkey("v", ">", ">gv")
