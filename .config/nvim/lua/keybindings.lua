-- neovim config
-- keybindings.lua
--
-- all normal mode keybinds which use the leader key
-- are available in settings/which-key.lua

local setkey = function(mode, key, bind, noremap)
    vim.api.nvim_set_keymap(mode, key, bind, { noremap = noremap, silent = true })
end

-- =============
-- insert mode
-- =============

-- delete previous word (ctrl + backspace)
setkey("i", "<C-BS>", "<C-w>")

-- escape (ctrl + x)
setkey("i", "<C-x>", "<Esc>", true)

-- unbind escape
setkey("i", "<Esc>", "<Nop>")

-- =============
-- normal mode
-- =============

-- navigate diagnostics (ctrl + n / ctrl + p)
setkey("n", "<C-n>", ":lua vim.diagnostic.goto_next()<CR>")
setkey("n", "<C-p>", ":lua vim.diagnostic.goto_prev()<CR>")

-- leader key (space)
setkey("n", "<Space>", "<Nop>")
setkey("n", "<Space>", "<Leader>")

-- buffer switching (tab / shift+tab)
setkey("n", "<Tab>", ":bnext<CR>")
setkey("n", "<S-Tab>", ":bprev<CR>")

-- rebind ctrl-x to escape
setkey("n", "<C-x>", "<Esc>", true)

-- rebind ctrl-d to decrement
setkey("n", "<C-d>", "<C-x>", true)

-- leap
setkey("n", "s", ":lua require('leap').leap({target_windows = {vim.fn.win_getid()}})<CR>")

-- disable arrow keys
local keys = { "<Up>", "<Down>", "<Right>", "<Left>" };
for _, k in ipairs(keys) do
    setkey("n", k, "<Nop>")
end

-- =============
-- visual mode
-- =============

-- stay in visual mode while indenting
setkey("v", "<", "<gv")
setkey("v", ">", ">gv")
