-- neovim config
-- lualine/themes/tokyonight_dark.lua
--
-- from https://github.com/folke/tokyonight.nvim/blob/main/lua/lualine/themes/tokyonight.lua

local colors = require("theme.base.tokyonight")

colors.bg = "#1a1b26"
colors.bg_dark = "#16161e"

local tokyonight = {}

tokyonight.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.blue },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

tokyonight.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

tokyonight.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

tokyonight.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

tokyonight.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

tokyonight.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

return tokyonight
