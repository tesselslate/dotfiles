-- awesome config
-- rc.lua

-- awesome libraries
local awful         = require("awful")
local beautiful     = require("beautiful")
local gears         = require("gears")
local naughty       = require("naughty")

-- i don't use tmux i don't want these bindings in popup thx
package.loaded["awful.hotkeys_popup.keys.tmux"] = {}

-- misc awesome functionality
require("awful.autofocus")
require("awful.hotkeys_popup.keys")

-- prefer bigger icons
awesome.set_preferred_icon_size(1)

-- handle runtime errors
do
    local in_error = false
    awesome.connect_signal("debug::error", function(err)
        if in_error then return end
        in_error = true
        naughty.notify({
            preset = naughty.config.presets.critical,
            title = "Error",
            text = tostring(err)
        })
        in_error = false
    end)
end

-- theme
beautiful.init(
    gears.filesystem.get_configuration_dir() .. "theme.lua"
)

client.connect_signal("focus", function (c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function (c) c.border_color = beautiful.border_normal end)

-- layouts
awful.layout.layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.top,
    awful.layout.suit.max
}

-- keybinds
local keys = require("keys")
root.keys(keys.global_keys)

client.connect_signal("request::default_mousebindings", keys.client_buttons_func)
client.connect_signal("request::default_keybindings", keys.client_keys_func)

-- signals
require("signals")

-- window rules
require("rules")

-- miscellaneous
client.connect_signal("manage", function (c)
    if awesome.startup
    and not c.size_hints.user_position
    and not c.size_hints.program_position then
        awful.placement.no_offscreen(c)
    end
end)
