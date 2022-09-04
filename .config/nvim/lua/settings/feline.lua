-- neovim config
-- settings/feline.lua

local colors = require("theme-wrapper").get_colors()
local components = {}
local feline = require("feline")
local vimode = require("feline.providers.vi_mode")

local function dyn_hl(hl)
    return function()
        local ret = {}
        for key, val in pairs(hl) do
            if type(val) == "function" then
                local val2 = val()
                if colors[val2] ~= nil then
                    ret[key] = colors[val2]
                else
                    ret[key] = val2
                end
            else
                if colors[val] ~= nil then
                    ret[key] = colors[val]
                else
                    ret[key] = val
                end
            end
        end
        return ret
    end
end

local function get_hl(name)
    return function()
        local hl = vim.api.nvim_get_hl_by_name(name, true)
        return {
            fg = string.format("#%06X", hl.foreground),
            bg = colors["bg"]
        }
    end
end

local function vim_hl()
    return {
        name = vimode.get_mode_highlight_name(),
        fg = colors[vimode.get_mode_color()]
    }
end

local default_hl = dyn_hl({
    fg = "fg",
    bg = "bg"
})

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
            hl = dyn_hl({
                name = vimode.get_mode_highlight_name,
                fg = "bg",
                bg = vimode.get_mode_color,
                style = "bold"
            })
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
            hl = dyn_hl({
                bg = "NONE",
                fg = "fg"
            })
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
            hl = dyn_hl({
                name = vimode.get_mode_highlight_name,
                fg = "bg",
                bg = vimode.get_mode_color,
            })
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

M.set_colors = function()
    colors = require("theme-wrapper").get_colors()
end

return M
