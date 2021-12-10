-- awesome config
-- signals/titlebars.lua

-- awesome libraries
local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")

client.connect_signal("request::titlebars", function (c)
    local buttons = gears.table.join(
        awful.button({}, 1, function ()
            client.focus = c
            c:raise()
            awful.mouse.client.move(c)
        end),
        awful.button({}, 3, function ()
            client.focus = c
            c:raise()
            awful.mouse.client.resize(c)
        end)
    )

    awful.titlebar(c):setup({
        -- left
        {
            awful.titlebar.widget.iconwidget(c),
            buttons = buttons,
            layout = wibox.layout.fixed.horizontal
        },

        -- middle
        {
            {
                align = "center",
                widget = awful.titlebar.widget.titlewidget(c)
            },
            buttons = buttons,
            layout = wibox.layout.flex.horizontal
        },

        -- right
        {
            awful.titlebar.widget.minimizebutton(c),
            awful.titlebar.widget.maximizedbutton(c),
            awful.titlebar.widget.closebutton(c),
            layout = wibox.layout.align.horizontal
        },
        layout = wibox.layout.align.horizontal
    })
end)
