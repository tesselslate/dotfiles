-- neovim config
-- settings/which-key.lua

local which_key = require("which-key")

which_key.setup({
    window = {
        border = "single"
    }
})

local function force_del()
    require("mini.bufremove").delete(0, true)
end

which_key.register({
    c = { require("mini.hipatterns").toggle, "Toggle Hipatterns" },
    D = { force_del, "Delete Buffer" },
    r = { ":Rel<CR>", "Relative Lines" },
    w = { require('mini.bufremove').delete, "Close Buffer" },
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
        d = { vim.lsp.buf.definition, "Definition" },
        i = { vim.lsp.buf.implementation, "Implementation" },
        r = { ":Telescope lsp_references<CR>", "References" },
    },
    l = {
        name = "LSP",
        c = { vim.lsp.buf.code_action, "Code Actions" },
        f = { vim.lsp.buf.format, "Format File" },
        h = { vim.lsp.buf.hover, "Symbol Info" },
        r = { vim.lsp.buf.rename, "Rename Symbol" },
    },
    v = {
        name = "Git",
        b = { ":Gitsigns blame_line<CR>", "Blame" },
        n = { ":Gitsigns next_hunk<CR>", "Next Hunk" },
        N = { ":Gitsigns prev_hunk<CR>", "Prev Hunk" },
        p = { ":Gitsigns preview_hunk<CR>", "Preview Hunk" },
        q = { ":Gitsigns setqflist<CR>", "Quickfix List" },
        r = { ":Gitsigns reset_hunk<CR>", "Reset Hunk" },
        s = { ":Gitsigns stage_hunk<CR>", "Stage Hunk" },
    },
}, { prefix = "<leader>" })
