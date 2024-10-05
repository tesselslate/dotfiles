vim.loader.enable()

require("tokyonight")

--[[
    OPTIONS
]]--

vim.opt.mouse           = "a"

vim.opt.expandtab       = true
vim.opt.shiftwidth      = 4
vim.opt.softtabstop     = 4
vim.opt.tabstop         = 4

vim.opt.clipboard       = "unnamedplus"
vim.opt.encoding        = "utf-8"
vim.opt.ignorecase      = true
vim.opt.smartcase       = true
vim.opt.swapfile        = false
vim.opt.undofile        = true

vim.opt.cursorline      = true
vim.opt.fillchars       = "eob: "
vim.opt.laststatus      = 3
vim.opt.lazyredraw      = true
vim.opt.number          = true
vim.opt.scrolloff       = 12
vim.opt.showmode        = false
vim.opt.sidescrolloff   = 24
vim.opt.signcolumn      = "yes"
vim.opt.termguicolors   = true
vim.opt.wrap            = false

vim.opt.completeopt     = "menuone,noinsert,noselect"

vim.g.mapleader         = " "
vim.g.maplocalleader    = " "

-- I do not like automatic comment expansion.
vim.cmd("autocmd FileType * set formatoptions-=cro")

--[[
    LAZY
]]--

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

--[[
    UTILITIES
]]--

local function status_diagnostics()
    if not next(vim.lsp.get_active_clients()) then
        return
    end

    local diagnostics = {}
    local levels = {
        { vim.diagnostic.severity.ERROR,  "DiagnosticSignError",    "" },
        { vim.diagnostic.severity.WARN,   "DiagnosticSignWarn",     "" },
        { vim.diagnostic.severity.INFO,   "DiagnosticSignInfo",     "" },
        { vim.diagnostic.severity.HINT,   "DiagnosticSignHint",     "" },
    }
    for _, level in ipairs(levels) do
        local n = #vim.diagnostic.get(0, { severity = level[1] })
        if n ~= 0 then
            table.insert(diagnostics, string.format(" %%#%s#%s %s ", level[2], level[3], n))
        end
    end

    return table.concat(diagnostics)
end

local function status_lsp()
    local clients = vim.lsp.get_active_clients()
    if #clients == 0 then
        return ""
    end
    return clients[1].name
end

local function status()
    local statusline = require("mini.statusline")

    -- always truncate mode for short mode name
    local name, ext     = vim.fn.expand('%:t', '%:e')
    local icon          = require("nvim-web-devicons").get_icon(name, ext, {default = true})

    local mode, mode_hl = statusline.section_mode({ trunc_width = 1000 })
    local filename      = icon .. " %f"
    local diagnostics   = status_diagnostics()
    local git           = vim.b.gitsigns_head
    local lsp           = status_lsp()
    local location      = "%l:%v"
    local progress      = "%p%%"

    if vim.bo.modified then
        filename = filename .. " "
    end
    if not vim.bo.modifiable or vim.bo.readonly then
        filename = filename .. " "
    end

    if git then
        git = " " .. git
    end

    return statusline.combine_groups({
        { hl = mode_hl,                     strings = { mode } },
        { hl = "MiniStatuslineFilename",    strings = { filename } },
        { hl = "MiniStatuslineDevinfo",     strings = { git } },
        { hl = "@none",                     strings = { diagnostics } },
        "%=", -- right align
        { hl = "@none",                     strings = { lsp } },
        { hl = "MiniStatuslineFilename",    strings = { location } },
        { hl = mode_hl,                     strings = { progress } },
    })
end

local kind_presets = {
    Text = "",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰇽",
    Variable = "󰂡",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈙",
    Reference = "",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "󰅲",
}

--[[
    PLUGINS
]]--

require("lazy").setup({
    {
        "echasnovski/mini.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function(_)
            require("mini.bufremove").setup({})
            require("mini.comment").setup({})
            require("mini.hipatterns").setup({
                highlighters = {
                    hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
                },
            })
            require("mini.tabline").setup({})
            require("mini.trailspace").setup({})
            require("mini.splitjoin").setup({
                mappings = {
                    toggle = "gs",
                },
            })
            require("mini.statusline").setup({
                content = {
                    active = status,
                    inactive = status,
                },
                use_icons = true,
                set_vim_settings = false,
            })
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function(_)
            local cmp = require("cmp")

            local function feedkey(key, mode)
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
            end

            cmp.setup({
                formatting = {
                    fields = {
                        "kind", "abbr", "menu"
                    },
                    format = function(_, vim_item)
                        vim_item.kind = string.format("%s ", kind_presets[vim_item.kind])
                        return vim_item
                    end
                },
                mapping = {
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif vim.snippet.active({direction = 1}) then
                            feedkey("<cmd>lua vim.snippet.jump(1)<cr>", "")
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    ["<S-Tab>"] = cmp.mapping(function()
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif vim.snippet.active({direction = -1}) then
                            feedkey("<cmd>lua vim.snippet.jump(-1)<cr>", "")
                        end
                    end, { "i", "s" }),
                    ["<CR>"] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true
                    }),
                    ["<M-q>"] = cmp.mapping(function()
                        if cmp.visible() then
                            cmp.close()
                        end
                    end, { "i", "s" })
                },
                sources = {
                    { name = "nvim_lsp" },
                },
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end
                },
                performance = {
                    fetching_timeout = 5000
                }
            })
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function(_)
            require("gitsigns").setup({
                signcolumn = true,
                numhl = false,
                linehl = false,
                word_diff = false,

                preview_config = {
                    border = "rounded",
                },
                signs = {
                    add          = { text = "│" },
                    change       = { text = "│" },
                    delete       = { text = "_" },
                    topdelete    = { text = "‾" },
                    changedelete = { text = "~" },
                    untracked    = { text = "┆" },
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function(_)
            vim.diagnostic.config({
                update_in_insert = true, -- update diagnostics during insert mode
                virtual_text     = false, -- no virtual text for diagnostics
            })

            local signs = {
                Error = "",
                Warn  = "",
                Hint  = "",
                Info  = ""
            }

            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, {
                    text = " " .. icon,
                    texthl = hl,
                    numhl = hl
                })
            end

            local lsp = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local function attach(client, bufnr)
                vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
            end

            lsp.ccls.setup({
                capabilities = capabilities,
                on_attach = attach,
            })
            lsp.gopls.setup({
                capabilities = capabilities,
                on_attach = attach,
                cmd = { "gopls", "serve" },
            })
            lsp.rust_analyzer.setup({
                capabilities = capabilities,
                on_attach = attach,
            })

            -- python
            lsp.jedi_language_server.setup({
                capabilities,
                on_attach = attach,
            })
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-fzf-native.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function(_)
            require("telescope").setup({
                defaults = {
                    layout_strategy = "bottom_pane",
                    sorting_strategy = "ascending",

                    layout_config = {
                        height = 12,
                        width = vim.o.columns,
                        prompt_position = "top",
                    },

                    border = true,
                    borderchars = {
                        prompt  = {"─", " ", " ", " ", "─", "─", " ", " "},
                        results = {" "},
                        preview = {"─", " ", "─", " ", " ", " ", " ", " "},
                    },

                    mappings = {
                        i = {
                            ["<C-j>"]   = require("telescope.actions").move_selection_next,
                            ["<C-k>"]   = require("telescope.actions").move_selection_previous,
                            ["<C-BS>"]  = { "<c-s-w>", type = "command" },
                        },
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = false,
                        case_mode = "smart_case",
                    },
                    ["ui-select"] = { require("telescope.themes").get_cursor() }
                },
            })
            require("telescope").load_extension("fzf")
            require("telescope").load_extension("ui-select")
        end,
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function(_)
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash", "c", "c_sharp", "cmake", "cpp", "css", "fish", "glsl",
                    "go", "gomod", "graphql", "hare", "html", "java", "javascript",
                    "json", "json5", "lua", "make", "markdown", "meson", "python",
                    "rust", "toml", "vim", "yaml", "zig",
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
            })
        end,
    },
    {
        "rlane/pounce.nvim",
    }
})

--[[
    KEYBINDINGS
]]--

local keys = {
    -- Unbinds
    {"i",   "<Esc>",            "<Nop>"},
    {"n",   "<C-a>",            "<Nop>"},
    {"n",   "<C-x>",            "<Nop>"},
    {"n",   "<Up>",             "<Nop>"},
    {"n",   "<Down>",           "<Nop>"},
    {"n",   "<Right>",          "<Nop>"},
    {"n",   "<Left>",           "<Nop>"},

    -- Insert
    {"i",   "<C-c>",            "<Esc>"},
    {"i",   "<C-H>",            "<C-w>"},
    {"i",   "<C-Backspace>",    "<C-w>"},

    -- Normal
    {"n",   "<C-n>",            vim.diagnostic.goto_next},
    {"n",   "<C-p>",            vim.diagnostic.goto_prev},
    {"n",   "<Tab>",            ":bnext<CR>"},
    {"n",   "<S-Tab>",          ":bprev<CR>"},
    {"n",   "s",                require("pounce").pounce},

    {"n",   "<Leader>c",        MiniHipatterns.toggle},
    {"n",   "<Leader>t",        ":Telescope resume<CR>"},
    {"n",   "<Leader>fb",       ":Telescope buffers<CR>"},
    {"n",   "<Leader>fd",       ":Telescope diagnostics<CR>"},
    {"n",   "<Leader>ff",       ":Telescope find_files<CR>"},
    {"n",   "<Leader>fg",       ":Telescope git_files<CR>"},
    {"n",   "<Leader>fl",       ":Telescope lsp_document_symbols<CR>"},
    {"n",   "<Leader>fs",       ":Telescope live_grep<CR>"},
    {"n",   "<Leader>gd",       ":Telescope lsp_definitions<CR>"},
    {"n",   "<Leader>gr",       ":Telescope lsp_references<CR>"},
    {"n",   "<Leader>lc",       vim.lsp.buf.code_action},
    {"n",   "<Leader>lf",       vim.lsp.buf.format},
    {"n",   "<Leader>lh",       vim.lsp.buf.hover},
    {"n",   "<Leader>lr",       vim.lsp.buf.rename},
    {"n",   "<Leader>vb",       ":Gitsigns blame_line<CR>"},
    {"n",   "<Leader>vn",       ":Gitsigns next_hunk<CR>"},
    {"n",   "<Leader>vN",       ":Gitsigns prev_hunk<CR>"},
    {"n",   "<Leader>vp",       ":Gitsigns preview_hunk<CR>"},
    {"n",   "<Leader>vq",       ":Gitsigns setqflist<CR>"},
    {"n",   "<Leader>vr",       ":Gitsigns reset_hunk<CR>"},
    {"n",   "<Leader>vs",       ":Gitsigns stage_hunk<CR>"},
    {"n",   "<Leader>w",        MiniBufremove.delete},

    -- Visual
    {"v",   "<",                "<gv"},
    {"v",   ">",                ">gv"},
}

for _, bind in ipairs(keys) do
    vim.keymap.set(bind[1], bind[2], bind[3], {silent = true})
end
