-- neovim config
-- settings/lualine.lua

-- setup
require("lualine").setup({
    options = {
        -- enable file icons
        icons_enabled = true,

        theme = "tokyonight_storm",

        -- don't show lualine in various windows
        disabled_filetypes = {
            "DiffviewFiles",
            "FloatingTerminal",
            "NvimTree"
        }
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {
            "branch",
            {
                "diagnostics", sources = {
                    "nvim_diagnostic"
                }
            }
        },
        lualine_c = {"filename"},

        lualine_x = {"filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {"branch"},
        lualine_c = {"filename"},

        lualine_x = {"filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },

    tabline = {},
    extensions = {}
})
