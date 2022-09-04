-- neovim config
-- settings/feline.lua

local bit = require("bit")
local colors = require("theme-wrapper").get_colors()
local components = {}
local feline = require("feline")
local vimode = require("feline.providers.vi_mode")

local function get_hl(name)
    local hl = vim.api.nvim_get_hl_by_name(name, true)
    local r = bit.band(bit.rshift(hl.foreground, 16), 0xff)
    local g = bit.band(bit.rshift(hl.foreground, 8), 0xff)
    local b = bit.band(hl.foreground, 0xff)
    return string.format("#%02X%02X%02X", r, g, b)
end

local function vim_hl()
    return {
        name = vimode.get_mode_highlight_name(),
        fg = vimode.get_mode_color()
    }
end

local diag_err = get_hl("DiagnosticError")
local diag_warn = get_hl("DiagnosticWarn")
local diag_hint = get_hl("DiagnosticHint")
local diag_info = get_hl("DiagnosticInfo")
components.active = {
    -- left
    {
        -- vi mode
        {
            provider = "▊█",
            hl = vim_hl
        },
        {
            provider = {
                name = "vi_mode",
                opts = {
                    show_mode_name = true,
                }
            },
            icon = "",
            hl = function()
                return {
                    name = vimode.get_mode_highlight_name(),
                    fg = "bg",
                    bg = vimode.get_mode_color(),
                    style = "bold"
                }
            end,
        },
        {
            provider = "█",
            hl = vim_hl
        },

        -- git branch
        {
            left_sep = " ",
            right_sep = " ",
            provider = "git_branch"
        },

        -- lsp errors
        {
            provider = "diagnostic_errors",
            hl = {
                fg = diag_err,
            }
        },

        -- lsp warnings
        {
            provider = "diagnostic_warnings",
            hl = {
                fg = diag_warn,
            }
        },

        -- lsp hints
        {
            provider = "diagnostic_hints",
            hl = {
                fg = diag_hint,
            }
        },

        -- lsp infos
        {
            provider = "diagnostic_info",
            hl = {
                fg = diag_info,
            }
        },

        -- filename
        {
            left_sep = " ",
            right_sep = " ",
            provider = "file_info",
        },

        -- blank
        {
            hl = {
                bg = "NONE"
            }
        }
    },

    -- middle
    {
        {
            hl = {
                bg = "NONE"
            }
        }
    },

    -- right
    {
        -- lsp status
        {
            provider = "lsp_client_names",
            right_sep = {
                str = " ",
                hl = {
                    bg = "NONE"
                }
            },
            hl = {
                bg = "NONE"
            }
        },

        -- percentage
        {
            provider = "line_percentage",
            left_sep = " ",
            right_sep = " ",
        },

        -- location
        {
            provider = "█",
            hl = vim_hl
        },
        {
            provider = "position",
            hl = function()
                return {
                    name = vimode.get_mode_highlight_name(),
                    fg = "bg",
                    bg = vimode.get_mode_color(),
                }
            end
        },
        {
            provider = "▊█",
            hl = vim_hl
        },
    }
}

-- there will never be an inactive statusline because it's global
components.inactive = components.active

feline.setup({
    components = components,
    vi_mode_colors = {
        NORMAL = "skyblue",
        OP = "skyblue",
        INSERT = "green",
        COMMAND = "orange",
        VISUAL = "magenta",
        LINES = "magenta",
        BLOCK = "magenta",
        REPLACE = "red",
        ["V-REPLACE"] = "red",
    }
})
feline.use_theme(colors)
