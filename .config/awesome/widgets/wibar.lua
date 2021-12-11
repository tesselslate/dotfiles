-- awesome config
-- widgets/wibar.lua

-- awesome libraries
local awful     = require("awful")
local gears     = require("gears")
local wibox     = require("wibox")

local keys      = require("keys")
local tasklist  = require("widgets.tasklist")

-- wibar setup
local function setup(s)
    -- lists
    s.taglist = awful.widget.taglist({
        screen = s,
        filter = awful.widget.taglist.filter.all,
        buttons = keys.taglist_buttons
    })

    tasklist(s)

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
            s.layoutbox
        }
    })
end

return setup
