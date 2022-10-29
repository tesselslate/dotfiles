-- neovim config
-- settings/which-key.lua

local which_key = require("which-key")

which_key.setup({
    window = {
        border = "single"
    }
})

which_key.register({
    q = { ":q<CR>", "Close Window" },
    r = { ":Rel<CR>", "Relative Lines" },
    t = { ":NvimTreeToggle<CR>", "File Tree" },
    w = { ":lua require('mini.bufremove').delete()<CR>", "Close Buffer" },
    ["<Tab>"] = { ":wincmd w<CR>", "Next Window" },
    ["<S-Tab>"] = { ":wincmd W<CR>", "Prev Window" },

    f = {
        name = "Find",
        f = { ":Telescope find_files<CR>", "Files" },
        s = { ":Telescope live_grep<CR>", "Grep" },
    },
    g = {
        name = "Goto",
        d = { ":lua vim.lsp.buf.definition()<CR>", "Definition" },
        i = { ":lua vim.lsp.buf.implementation()<CR>", "Implementation" },
        r = { ":lua vim.lsp.buf.references()<CR>", "References" },
    },
    l = {
        name = "LSP",
        c = { ":CodeActionMenu<CR>", "Code Actions" },
        d = { ":TroubleToggle<CR>", "Diagnostics List" },
        f = { ":lua vim.lsp.buf.format()<CR>", "Format File" },
        h = { ":lua vim.lsp.buf.hover()<CR>", "Symbol Info" },
        r = { ":lua vim.lsp.buf.rename()<CR>", "Rename Symbol" },
    },
}, { prefix = "<leader>" })
