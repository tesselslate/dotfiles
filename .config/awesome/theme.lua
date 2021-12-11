-- awesome config
-- theme.lua

-- load awesome libraries
local theme_assets  = require("beautiful.theme_assets")
local xresources    = require("beautiful.xresources")

local dpi           = xresources.apply_dpi
local gfs           = require("gears.filesystem")

-- load colorscheme
local colors        = require("colors.rosepine_moon")

-- create theme
local theme         = dofile(gfs.get_themes_dir() .. "default/theme.lua")

theme.font          = "JetBrains Mono 12"
theme.bg_normal     = colors.background
theme.bg_focus      = colors.color12
theme.bg_urgent     = colors.color9
theme.bg_minimize   = colors.color8
theme.bg_systray    = colors.background

theme.fg_normal     = colors.foreground
theme.fg_focus      = colors.background
theme.fg_urgent     = colors.background
theme.fg_minimize   = colors.background

theme.useless_gap   = dpi(3)
theme.border_width  = dpi(2)
theme.border_normal = colors.color0
theme.border_focus  = theme.bg_focus
theme.border_marked = theme.color10

theme.menu_height   = dpi(16)
theme.menu_width    = dpi(100)

-- icons and other stuff
theme               = theme_assets.recolor_layout(theme, theme.fg_normal)
theme.icon_theme    = nil -- use default icons
theme.awesome_icon  = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

theme.wallpaper     = "~/.config/awesome/backgrounds/7dg.png"

return theme
