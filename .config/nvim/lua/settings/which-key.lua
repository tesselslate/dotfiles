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
    w = { ":bp | sp | bn | bd<CR>", "Close Buffer" },
    ["<Tab>"] = { ":wincmd w<CR>", "Next Window" },
    ["<S-Tab>"] = { ":wincmd W<CR>", "Prev Window" },

    f = {
        name = "Find",
        b = { ":Telescope buffers<CR>", "Buffers" },
        c = { ":Telescope git_commits<CR>", "Commits" },
        d = { ":Telescope diagnostics<CR>", "Diagnostics" },
        f = { ":Telescope find_files<CR>", "Files" },
        j = { ":Telescope jumplist<CR>", "Jumps" },
        q = { ":Telescope quickfix<CR>", "Quickfix" },
        s = { ":Telescope live_grep<CR>", "Grep" },
    },
    g = {
        name = "Goto",
        d = { ":lua vim.lsp.buf.definition()<CR>", "Definition" },
        i = { ":lua vim.lsp.buf.implementation()<CR>", "Implementation" },
        r = { ":Telescope lsp_references<CR>", "References" },
    },
    l = {
        name = "LSP",
        c = { ":lua vim.lsp.buf.code_action()<CR>", "Code Actions" },
        f = { ":lua vim.lsp.buf.format()<CR>", "Format File" },
        h = { ":lua vim.lsp.buf.hover()<CR>", "Symbol Info" },
        r = { ":lua vim.lsp.buf.rename()<CR>", "Rename Symbol" },
    },
    v = {
        name = "Git",
        b = { ":Gitsigns blame_line<CR>", "Blame" },
        n = { ":Gitsigns next_hunk<CR>", "Next Hunk" },
        N = { ":Gitsigns prev_hunk<CR>", "Prev Hunk" },
        p = { ":Gitsigns preview_hunk_inline<CR>", "Preview Hunk" },
        q = { ":Gitsigns setqflist<CR>", "Quickfix List" },
        r = { ":Gitsigns reset_hunk<CR>", "Reset Hunk" },
        s = { ":Gitsigns stage_hunk<CR>", "Stage Hunk" },
    },
}, { prefix = "<leader>" })
