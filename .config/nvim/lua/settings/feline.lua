-- neovim config
-- settings/feline.lua

local colors = {
    fg = "#c8d3f5",
    bg = "#222436",
    black = "#444a73",
    skyblue = "#7aa2f7",
    cyan = "#86e1fc",
    green = "#c3e88d",
    oceanblue = "#65bcff",
    magenta = "#c099ff",
    orange = "#ff966c",
    red = "#ff757f",
    violet = "#ff007c",
    white = "#c8d3f5",
    yellow = "#ffc777"
}
local components = {}
local feline = require("feline")
local vimode = require("feline.providers.vi_mode")

local function get_hl(name)
    local hl = vim.api.nvim_get_hl_by_name(name, true)
    return {
        fg = string.format("#%06X", hl.foreground),
        bg = "bg"
    }
end

local function vim_hl()
    return {
        name = vimode.get_mode_highlight_name(),
        fg = colors[vimode.get_mode_color()]
    }
end

local default_hl = {
    fg = "fg",
    bg = "bg"
}

local default_sep = {
    str = " ",
    hl = default_hl
}

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
                    bg = colors[vimode.get_mode_color()],
                    style = "bold"
                }
            end
        },
        {
            provider = "█",
            hl = vim_hl
        },

        -- git branch
        {
            left_sep = default_sep,
            right_sep = default_sep,
            provider = "git_branch",
            hl = default_hl
        },

        -- lsp errors
        {
            provider = "diagnostic_errors",
            hl = get_hl("DiagnosticError")
        },

        -- lsp warnings
        {
            provider = "diagnostic_warnings",
            hl = get_hl("DiagnosticWarn")
        },

        -- lsp hints
        {
            provider = "diagnostic_hints",
            hl = get_hl("DiagnosticHint")
        },

        -- lsp infos
        {
            provider = "diagnostic_info",
            hl = get_hl("DiagnosticInfo")
        },

        -- filename
        {
            left_sep = default_sep,
            right_sep = default_sep,
            provider = "file_info",
            hl = default_hl
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
                bg = "NONE",
                fg = "fg"
            }
        },

        -- percentage
        {
            provider = "line_percentage",
            left_sep = default_sep,
            right_sep = default_sep,
            hl = default_hl
        },

        -- location
        {
            provider = "█",
            hl = vim_hl
        },
        {
            provider = "position",
            hl = function() return {
                    name = vimode.get_mode_highlight_name(),
                    fg = "bg",
                    bg = colors[vimode.get_mode_color()],
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

local M = {}

M.load = function()
    feline.use_theme(colors)
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
end

return M
