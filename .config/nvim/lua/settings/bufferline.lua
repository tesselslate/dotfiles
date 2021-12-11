-- neovim config
-- settings/bufferline.lua

local diagnostic_symbols = {
     error = " ",
     warning = " ",
     other = " ",
     hint = " "
}

-- setup
local bufferline = require("bufferline")
bufferline.setup({
    options = {
        -- mouse commands
        left_mouse_command = "b %d",        -- open buffer
        right_mouse_command = "b %d | Bc",  -- close buffer
        middle_mouse_command = nil,

        -- indicator icons
        indicator_icon = '▎',
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        -- settings
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        separator_style = "thick",
        always_show_bufferline = true,

        -- file explorer text
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center"
            },
            {
                filetype = "DiffviewFiles",
                text = "Git Diffview",
                text_align = "center"
            }
        },

        -- diagnostic settings
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(_, _, diagnostics_dict, _)
            local res = ""

            for e, n in pairs(diagnostics_dict) do
                local ds = diagnostic_symbols[e] or e
                res = res .. n .. ds
            end

            return res
        end
    }
})
