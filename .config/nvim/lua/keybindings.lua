-- neovim config
-- keybindings.lua
--
-- all normal mode keybinds which use the leader key
-- are available in settings/which-key.lua

local setkey = function(mode, key, bind, noremap)
    vim.keymap.set(mode, key, bind, { remap = not noremap, silent = true })
end

-- =============
-- command mode
-- =============

-- escape (ctrl + x)
setkey("c", "<C-x>", "<Esc>", true)

-- =============
-- insert mode
-- =============

-- delete previous word (ctrl + backspace)
setkey("i", "<C-H>", "<C-w>")

-- pounce (ctrl + s)
setkey("i", "<C-s>", require("pounce").pounce)

-- escape (ctrl + x)
setkey("i", "<C-x>", "<Esc>", true)

-- unbind escape
setkey("i", "<Esc>", "<Nop>")

-- =============
-- normal mode
-- =============

-- navigate diagnostics (ctrl + n / ctrl + p)
setkey("n", "<C-n>", vim.diagnostic.goto_next)
setkey("n", "<C-p>", vim.diagnostic.goto_prev)

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

-- pounce (fuzzy jump)
setkey("n", "s", require("pounce").pounce)

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
