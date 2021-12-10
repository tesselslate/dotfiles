-- awesome config
-- signals/screen.lua

-- awesome libraries
local awful     = require("awful")
local beautiful = require("beautiful")
local gears     = require("gears")

local wibar     = require("widgets.wibar")

-- wallpaper
local function set_wallpaper(s)
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end

screen.connect_signal("property::geometry", set_wallpaper)

-- signals
awful.screen.connect_for_each_screen(function (s)
    -- miscellaneous
    set_wallpaper(s)
    awful.tag({"1", "2", "3", "4"}, s, awful.layout.layouts[1])

    -- wibar setup
    wibar(s)
end)
