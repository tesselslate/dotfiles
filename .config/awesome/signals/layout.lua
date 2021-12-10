-- awesome config
-- signals/layout.lua

-- awesome libraries
local awful = require("awful")

tag.connect_signal("property::layout", function (t)
    local clients = t:clients()
    for _, c in pairs(clients) do
        if c.floating and not c.fullscreen or c.first_tag.layout.name == "floating" then
            awful.titlebar.show(c)
        else
            awful.titlebar.hide(c)
        end

        awful.placement.no_offscreen(c)
    end
end)
