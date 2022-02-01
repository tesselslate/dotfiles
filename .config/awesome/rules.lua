-- awesome config
-- rules.lua

-- awesome libraries
local awful     = require("awful")
local beautiful = require("beautiful")

local keys      = require("keys")

local floating  = function(rule, custom_props)
    local properties = {
        focus           = awful.client.focus.filter,
        raise           = true,
        keys            = keys.client_keys,
        buttons         = keys.client_buttons,
        screen          = awful.screen.preferred,
        placement       = awful.placement.no_overlap + awful.placement.no_offscreen,
        floating        = true
    }

    if custom_props then
        for k, v in pairs(custom_props) do
            properties[k] = v
        end
    end

    return {
        rule = rule,
        properties = properties
    }
end

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
    floating({
        class = "Celeste.bin.x86_64"
    }),

    -- minecraft
    floating({
        class = "Minecraft* 1.16.1"
    }),

    -- obs projector
    floating({
        name = "Windowed Projector (Source) - Magnifier"
    })
}
