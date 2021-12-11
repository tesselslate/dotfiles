-- neovim config
-- settings/lualine.lua

-- helpers
local get_color = require("lualine.utils.utils").extract_highlight_colors

-- setup
require("lualine").setup({
    options = {
        -- enable file icons
        icons_enabled = true,

        -- bar theme
        theme = "tokyonight",

        -- separator characters
        section_separators = {
            left = "",
            right = ""
        },

        -- don't show lualine in various windows
        disabled_filetypes = {
            "DiffviewFiles",
            "FloatingTerminal",
            "NvimTree"
        }
    },
    sections = {
        lualine_a = {
            {
                "mode",
                separator = {
                    left = " ",
                    right = ""
                }
            }
        },
        lualine_b = {
            "branch",
            {
                "diff",

                diff_color = {
                    added = { fg = get_color("LDiffAdd", "fg") },
                    modified = { fg = get_color("LDiffChange", "fg") },
                    removed = { fg = get_color("LDiffDelete", "fg") }
                },
                symbols = {
                    added = "  ",
                    modified = " 柳",
                    removed = "  "
                },
            },
            {
                "diagnostics", sources = {
                    "nvim_lsp"
                }
            }
        },
        lualine_c = {"filename"},

        lualine_x = {"encoding", "fileformat", "filetype"},
        lualine_y = {"progress"},
        lualine_z = {
            {
                "location",
                separator = {
                    left = "",
                    right = " "
                }
            }
        }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {"branch"},
        lualine_c = {"filename"},

        lualine_x = {"encoding", "fileformat", "filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    tabline = {},
    extensions = {}
})
