-- awesome config
-- gizmos/pulse.lua

-- awesome libraries
local awful = require("awful")

local pulse = {}

pulse.change_volume = function (volume)
    awful.spawn.with_shell("pactl set-sink-volume @DEFAULT_SINK@ " .. volume)
end

pulse.get_volume = function (callback)
    return awful.spawn.easy_async_with_shell("pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5; exit}'", callback)
end

pulse.get_volume_num = function (volume)
    return tonumber(string.sub(volume, 1, -2), 10)
end

pulse.set_volume = function (volume)
    awful.spawn.with_shell("pactl set-sink-volume @DEFAULT_SINK@ " .. volume)
end

return pulse
