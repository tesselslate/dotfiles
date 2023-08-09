-- neovim config
-- settings/lsp.lua

local lsp = require("lspconfig")
local lsp_project = require("lsp-project")

lsp_project.setup({})

-- ==========
-- config
-- ==========

-- diagnostics config
vim.diagnostic.config({
    update_in_insert = true, -- update diagnostics during insert mode
    virtual_text     = false, -- no virtual text for diagnostics
})

-- indicator characters
local signs = {
    Error = "",
    Warn  = "",
    Hint  = "",
    Info  = ""
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {
        text = icon,
        texthl = hl,
        numhl = hl
    })
end

-- ==========
-- helpers
-- ==========
local attach = function(client, bufnr)
    client.config.flags.debounce_text_changes = 500
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- ==========
-- language servers
-- ==========

-- ccls (C)
lsp.ccls.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap()
})

-- csharp-ls (C#)
lsp.csharp_ls.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),
})

-- gopls (go)
lsp.gopls.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),

    cmd = { "gopls", "serve" },
    settings = {
        gopls = {
            analyses = {
                unusedparams = true
            },
            staticcheck = true
        }
    }
})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true})
    end
})

-- python
lsp.jedi_language_server.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),
})

-- rust-analyzer (rust)
lsp.rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),

    settings = {
        ["rust-analyzer"] = {
            checkOnSave = {
                allTargets = false
            },
            diagnostics = {
                disabled = {"unresolved-proc-macro"}
            },
        }
    }
})

-- zls (zig)
lsp.zls.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),
})
