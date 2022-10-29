-- neovim config
-- settings/lsp.lua

local lsp = require("lspconfig")
local lsp_project = require("lsp-project")

lsp_project.setup({
    cache = true,
    scan_depth = 10
})

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

-- clangd (C)
lsp.clangd.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap()
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

-- haskell (hls)
lsp.hls.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),
})

-- jdtls (java)
lsp.jdtls.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),

    cmd = {
        "jdtls",
        "-configuration",
        "/home/dog/.config/jdtls",
        "-data",
        "/home/dog/.cache/jdtls"
    }
})

-- sumneko (lua)
lsp.sumneko_lua.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),

    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT"
            },
            diagnostics = {
                globals = { "vim" }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false
            }
        }
    }
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
            }
        }
    }
})

-- zls (zig)
lsp.zls.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap(),
})
