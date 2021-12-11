-- awesome config
-- widgets/tasklist.lua

-- awesome libraries
local awful     = require("awful")
local wibox     = require("wibox")

local keys      = require("keys")

-- tasklist setup
local function setup(s)
    s.tasklist  = awful.widget.tasklist({
        screen  = s,
        filter  = awful.widget.tasklist.filter.currenttags,
        buttons = keys.tasklist_buttons,
        layout  = {
            spacing = 2,
            layout  = wibox.layout.fixed.horizontal
        },
        widget_template = {
            {
                    wibox.widget.base.make_widget(),
                    id            = "background_role",
                    forced_height = 4,
                    widget        = wibox.container.background,
            },
            {
                {
                    id     = "clienticon",
                    widget = awful.widget.clienticon,
                },
                left   = 4,
                bottom = 2,
                top    = 2,
                widget = wibox.container.margin
            },
            nil,
            create_callback = function (self, c, _, _)
                self:get_children_by_id("clienticon")[1].client = c
            end,
            layout = wibox.layout.align.vertical
        }
    })
end

return setup
