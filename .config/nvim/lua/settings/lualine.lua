-- neovim config
-- settings/lualine.lua

-- setup
local theme = ""

if vim.g.colors_name == "tokyonight_dark" or vim.g.colors_name == "tokyonight_storm" then
    theme = vim.g.colors_name
else
    theme = "auto"
end

require("lualine").setup({
    options = {
        -- enable file icons
        icons_enabled = true,
        theme = theme,
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
