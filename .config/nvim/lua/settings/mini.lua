-- neovim config
-- settings/mini.lua

function status()
    local status = require("mini.statusline")

    -- always truncate mode for short mode name
    local mode, mode_hl = status.section_mode({ trunc_width = 1000 })
    local filename      = "%f"
    local diagnostics   = status_diagnostics()
    local git           = vim.b.gitsigns_head
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

    return status.combine_groups({
        { hl = mode_hl,                     strings = { mode } },
        { hl = "MiniStatuslineFilename",    strings = { filename } },
        { hl = "MiniStatuslineDevinfo",     strings = { git } },
        { hl = "@none",                     strings = { diagnostics } },
        "%=", -- right align
        { hl = "MiniStatuslineFilename",    strings = { location } },
        { hl = mode_hl,                     strings = { progress } },
    })
end

function status_diagnostics()
    if not next(vim.lsp.buf_get_clients()) then
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

require("mini.bufremove").setup({})
require("mini.comment").setup({})
require("mini.tabline").setup({})
require("mini.trailspace").setup({})

require("mini.hipatterns").setup({
    highlighters = {
        fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
        hack  = { pattern = "%f[%w]()HACK()%f[%W]",  group = "MiniHipatternsHack"  },
        todo  = { pattern = "%f[%w]()TODO()%f[%W]",  group = "MiniHipatternsTodo"  },
        note  = { pattern = "%f[%w]()NOTE()%f[%W]",  group = "MiniHipatternsNote"  },

        hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
    }
})
require("mini.splitjoin").setup({
    mappings = {
        toggle = "gs",
    }
})
require("mini.statusline").setup({
    content = {
        active = status,
        inactive = nil,
    },
    use_icons = false,
    set_vim_settings = false,
})
