-- awesome config
-- theme.lua

-- load awesome libraries
local theme_assets  = require("beautiful.theme_assets")
local xresources    = require("beautiful.xresources")
local gfs           = require("gears.filesystem")
local dpi           = xresources.apply_dpi

-- load colorscheme
-- TODO: implement a proper colorscheme switching system
local colorscheme   = require("colors." .. "tokyonight_storm")

-- apply defauls to theme
local theme         = dofile(gfs.get_themes_dir() .. "default/theme.lua")

theme.font          = "JetBrains Mono 12"
theme.bg_normal     = colorscheme.background
theme.bg_focus      = colorscheme.color12
theme.bg_urgent     = colorscheme.color9
theme.bg_minimize   = colorscheme.color8
theme.bg_systray    = colorscheme.background

theme.fg_normal     = colorscheme.foreground
theme.fg_focus      = colorscheme.background
theme.fg_urgent     = colorscheme.background
theme.fg_minimize   = colorscheme.background

theme.useless_gap   = dpi(3)
theme.border_width  = dpi(2)
theme.border_normal = colorscheme.color0
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

-- apply any changes specified from colorscheme
if colorscheme.overrides then
    for k, v in pairs(colorscheme.overrides) do
        theme[k] = v
    end
end

return theme
