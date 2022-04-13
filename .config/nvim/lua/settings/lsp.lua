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
    update_in_insert    = true,     -- update diagnostics during insert mode
    virtual_text        = false,    -- no virtual text for diagnostics
})

-- ==========
-- helpers
-- ==========
local attach = function(client, bufnr)
    client.config.flags.debounce_text_changes = 500
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- ==========
-- language servers
-- ==========

-- clangd (C)
lsp.clangd.setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = lsp_project.wrap()
})

-- omnisharp (C#)
local pid = vim.fn.getpid();
local omnisharp_bin = "/home/dog/documents/pkgs/omnisharp/run";

lsp.omnisharp.setup({
    cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
    capabilities = capabilities,
    on_init = lsp_project.wrap()
})

-- gopls (go)
-- TODO: import ordering helper func?
-- https://github.com/golang/tools/blob/master/gopls/doc/vim.md#neovim-imports
lsp.gopls.setup({
    cmd = {"gopls", "serve"},
    settings = {
        gopls = {
            analyses = {
                unusedparams = true
            },
            staticcheck = true
        }
    },
    on_init = lsp_project.wrap()
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

-- sumneko_lua (Lua)
local sumneko_bin = "lua-language-server"
local sumneko_root = "/usr/lib/lua-language-server"

lsp.sumneko_lua.setup({
    capabilities = capabilities,
    cmd = {
        sumneko_bin, "-E", sumneko_root .. "/main.lua"
    },
    on_attach = attach,
    on_init = lsp_project.wrap(function(client)
        local library_path = nil
        local runtime_path = nil

        if vim.fn.getcwd():find("nvim") then
            library_path = vim.api.nvim_get_runtime_file("", true)
            runtime_path = vim.split(package.path, ';')

            table.insert(library_path, vim.fn.expand("$VIMRUNTIME/lua"))
            table.insert(library_path, vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"))
            table.insert(runtime_path, "lua/?.lua")
            table.insert(runtime_path, "lua/?/init.lua")
        elseif vim.fn.getcwd():find("awesome") then
            library_path = {}
            runtime_path = {}

            table.insert(library_path, vim.fn.expand("/usr/share/awesome/lib"))
            table.insert(runtime_path, "/usr/share/awesome/lib/?/init.lua")
        end

        client.config.settings.Lua.runtime.path = runtime_path
        client.config.settings.Lua.workspace.path = library_path

        client.notify("workspace/didChangeConfiguration", {
            settings = client.config.settings
        })
    end),
    settings = {
        Lua = {
            diagnostics = {
                disable = {
                    "lowercase-global",     -- disable "lowercase global" warning
                    "redefined-local",
                    "undefined-field"
                },
                globals = {
                    -- awesomewm
                    "awesome",
                    "client",
                    "root",
                    "screen",
                    "tag",

                    -- neovim
                    "vim"
                }
            },
            runtime = {
                version = "LuaJIT"
            },
            telemetry = {
                enable = false
            },
            workspace = {}
        }
    },
})

-- zls (zig)
lsp.zls.setup({
    cmd = { "/home/dog/documents/pkgs/zls/bin/zls" }
})
