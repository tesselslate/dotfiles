-- awesome config
-- signals/floating.lua

-- awesome libraries
local awful = require("awful")

client.connect_signal("property::floating", function (c)
    if c.floating and not c.fullscreen then
        awful.titlebar.show(c)
    else
        awful.titlebar.hide(c)
    end
end)
