-- awesome config
-- rules.lua

-- awesome libraries
local awful     = require("awful")
local beautiful = require("beautiful")

local keys      = require("keys")

-- rules
awful.rules.rules = {
    -- all clients
    {
        rule = {},
        properties = {
            border_width    = beautiful.border_width,
            border_color    = beautiful.border_normal,
            focus           = awful.client.focus.filter,
            raise           = true,
            keys            = keys.client_keys,
            buttons         = keys.client_buttons,
            screen          = awful.screen.preferred,
            placement       = awful.placement.no_overlap + awful.placement.no_offscreen
        }
    },

    -- celeste
    {
        rule = {
            class = "Celeste.bin.x86_64"
        },
        properties = {
            focus           = awful.client.focus.filter,
            raise           = true,
            keys            = keys.client_keys,
            buttons         = keys.client_buttons,
            screen          = awful.screen.preferred,
            placement       = awful.placement.no_overlap + awful.placement.no_offscreen,
            floating        = true
        }
    },

    -- minecraft
    {
        rule = {
            class = "Minecraft* 1.16.1"
        },
        properties = {
            focus           = awful.client.focus.filter,
            raise           = true,
            keys            = keys.client_keys,
            buttons         = keys.client_buttons,
            screen          = awful.screen.preferred,
            floating        = true
        }
    }
}
