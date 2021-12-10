-- awesome config
-- widgets/wibar.lua

-- awesome libraries
local awful     = require("awful")
local beautiful = require("beautiful")
local gears     = require("gears")
local wibox     = require("wibox")

local hotkeys_popup = require("awful.hotkeys_popup")
local keys          = require("keys")

-- wibar setup
local function setup(s)
    -- lists
    s.taglist = awful.widget.taglist({
        screen = s,
        filter = awful.widget.taglist.filter.all,
        buttons = keys.taglist_buttons
    })

    s.tasklist = awful.widget.tasklist({
        screen = s,
        filter = awful.widget.tasklist.filter.currenttags,
        buttons = keys.tasklist_buttons
    })

    -- menu
    s.menu = awful.menu({
        items = {
            {
                "hotkeys", function ()
                    hotkeys_popup.show_help(nil, awful.screen.focused())
                end
            },
            {
                "manual", "kitty -e man awesome"
            },
            {
                "config", "kitty -e nvim ~/.config/awesome/rc.lua"
            },
            {
                "restart", awesome.restart
            },
            {
                "quit", function ()
                    awesome.quit()
                end
            }
        }
    })

    -- layoutbox
    s.layoutbox = awful.widget.layoutbox(s)
    s.layoutbox:buttons(gears.table.join(
        awful.button({}, 1, function () awful.layout.inc(1) end),
        awful.button({}, 3, function () awful.layout.inc(-1) end)
    ))

    -- other widgets
    s.textclock = wibox.widget.textclock()

    -- wibar setup
    s.wibox = awful.wibar({
        position = "top",
        screen = s
    })

    s.wibox:setup({
        layout = wibox.layout.align.horizontal,

        -- left widgets
        {
            layout = wibox.layout.fixed.horizontal,
            s.taglist
        },

        -- middle widget
        s.tasklist,

        -- right widgets
        {
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            s.textclock,
            s.layoutbox,
            awful.widget.launcher({
                image = beautiful.awesome_icon,
                menu = s.menu
            }),
        }
    })
end

return setup
