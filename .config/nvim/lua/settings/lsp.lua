-- neovim config
-- settings/lsp.lua

local lsp = require("lspconfig")

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

-- update diagnostics in insert mode
vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        update_in_insert = true,
        virtual_text = false
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
    on_attach = attach
})

-- csharp_ls (C#)
lsp.csharp_ls.setup({
    capabilities = capabilities,
    on_attach = attach
})

-- sumneko_lua (Lua)
local sumneko_bin = "lua-language-server"
local sumneko_root = "/usr/lib/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
table.insert(runtime_path, "/usr/share/awesome/lib/?/init.lua")

local library_path = vim.api.nvim_get_runtime_file("", true)
table.insert(library_path, vim.fn.expand("$VIMRUNTIME/lua"))
table.insert(library_path, vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"))
table.insert(library_path, vim.fn.expand("/usr/share/awesome/lib"))

lsp.sumneko_lua.setup({
    capabilities = capabilities,
    cmd = {
        sumneko_bin, "-E", sumneko_root .. "/main.lua"
    },
    on_attach = attach,
    settings = {
        Lua = {
            diagnostics = {
                disable = {
                    "lowercase-global"      -- disable "lowercase global" warning
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
                version = "LuaJIT",
                path = runtime_path
            },
            telemetry = {
                enable = false
            },
            workspace = {
                library = library_path
            }
        }
    },
})
