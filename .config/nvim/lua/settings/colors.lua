-- neovim config
-- settings/colors.lua

require("tokyonight").setup({
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
    },
    on_colors = function(c)
        c.git = {
            add    = "#c3e88d",
            change = "#6fbcff",
            delete = "#ff757f",
        }
        c.gitSigns = c.git

    end,
    on_highlights = function(hl, c)
        hl.EndOfBuffer = {
            fg = nil,
        }
        hl.LineNr = {
            fg = c.fg_dark,
        }
    end
})
vim.cmd("colorscheme tokyonight-moon")
