-- neovim config
-- settings/lsp.lua

local lsp = require("lspconfig")
local lsp_project = require("lsp-project")

lsp_project.setup({})

-- ==========
-- config
-- ==========

-- indicator characters
local signs = {
    Error = " ",
    Warning = " ",
    Hint = " ",
    Information = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {
        text = icon,
        texthl = hl,
        numhl = hl
    })
end

-- diagnostics config
vim.diagnostic.config({
    update_in_insert = true, -- update diagnostics during insert mode
    virtual_text     = false, -- no virtual text for diagnostics
})

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

-- omnisharp (C#)
lsp.omnisharp.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),

    cmd = { "omnisharp" },
    handlers = {
        ["textDocument/definition"] = require("omnisharp_extended").handler,
    },
    analyze_open_documents_only = false,
    enable_editorconfig_support = true,
    enable_roslyn_analyzers = true,
    organize_imports_on_format = true,
    enable_import_completion = true
})

-- gopls (go)
-- TODO: import ordering helper func?
-- https://github.com/golang/tools/blob/master/gopls/doc/vim.md#neovim-imports
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

-- hls (haskell)
lsp.hls.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),
})

-- pyright (python)
lsp.pyright.setup({
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
