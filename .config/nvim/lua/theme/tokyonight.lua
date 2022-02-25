-- neovim config
-- colors/tokyonight.lua
--
-- based off of https://github.com/folke/tokyonight.nvim

local utils = require("theme.util")

local M = {
    none = "NONE",
    bg_dark = "#1f2335",
    bg = "#24283b",
    bg_highlight = "#292e42",
    terminal_black = "#414868",
    fg = "#c0caf5",
    fg_dark = "#a9b1d6",
    fg_gutter = "#3b4261",
    dark3 = "#545c7e",
    comment = "#565f89",
    dark5 = "#737aa2",
    blue0 = "#3d59a1",
    blue = "#7aa2f7",
    cyan = "#7dcfff",
    blue1 = "#2ac3de",
    blue2 = "#0db9d7",
    blue5 = "#89ddff",
    blue6 = "#B4F9F8",
    blue7 = "#394b70",
    magenta = "#bb9af7",
    magenta2 = "#ff007c",
    purple = "#9d7cd8",
    orange = "#ff9e64",
    yellow = "#e0af68",
    green = "#9ece6a",
    green1 = "#73daca",
    green2 = "#41a6b5",
    teal = "#1abc9c",
    red = "#f7768e",
    red1 = "#db4b4b",
    git = {
        change = "#6183bb",
        add = "#449dab",
        delete = "#914c54",
        conflict = "#bb7a61"
    },
    gitSigns = {
        add = "#164846",
        change = "#394b70",
        delete = "#823c41"
    }
}

M.diff = {
    add = utils.darken(M.green2, 0.15),
    delete = utils.darken(M.red1, 0.15),
    change = utils.darken(M.blue7, 0.15),
    text = M.blue7
}

M.git.ignore = M.dark3
M.black = utils.darken(M.bg, 0.8, "#000000")
M.border_highlight = M.blue0
M.border = M.black
M.bg_popup = M.bg_dark
M.bg_statusline = M.bg_dark
M.bg_sidebar = M.bg_dark
M.bg_float = M.bg_dark
M.bg_visual = utils.darken(M.blue0, 0.7)
M.bg_search = M.blue0
M.fg_sidebar = M.fg_dark
M.error = M.red1
M.warning = M.yellow
M.info = M.blue2
M.hint = M.teal

-- personal overrides
M.comment = M.purple
M.border_highlight = M.purple

return M
