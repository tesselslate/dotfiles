-- awesome config
-- keys.lua

-- awesome libraries
local awful         = require("awful")
local gears         = require("gears")
local hotkeys_popup = require("awful.hotkeys_popup")

local pulse         = require("gizmos.pulse")

-- keybindings
local modkey = "Mod4"

local globalkeys = gears.table.join(
    -------------------- HELP
    -- show keybinds
    awful.key(
        { modkey,           }, "s",
        hotkeys_popup.show_help,
        { description = "show help", group = "awesome" }
    ),

    -------------------- TAGS
    -- switch tag (left)
    awful.key(
        { modkey, "Control" }, "Left",
        awful.tag.viewprev,
        { description = "previous tag", group = "tag" }
    ),

    -- switch tag (right)
    awful.key(
        { modkey, "Control" }, "Right",
        awful.tag.viewnext,
        { description = "next tag", group = "tag" }
    ),

    -------------------- CLIENTS
    -- focus next client
    awful.key(
        { modkey,           }, "j",
        function ()
            awful.client.focus.byidx(1)
        end,
        { description = "focus next client", group = "client" }
    ),

    -- focus previous client
    awful.key(
        { modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
        end,
        { description = "focus previous client", group = "client" }
    ),

    -------------------- AWESOME
    -- restart awesome
    awful.key(
        { modkey, "Shift",  }, "r",
        awesome.restart,
        { description = "restart awesome", group = "awesome" }
    ),

    -- quit awesome
    awful.key(
        { modkey, "Shift",  }, "q",
        awesome.quit,
        { description = "quit awesome", group = "awesome" }
    ),

    -- lock screen
    awful.key(
        { modkey,           }, "l",
        function ()
            awful.spawn.with_shell("lock")
        end,
        { description = "lock screen", group = "awesome" }
    ),

    -------------------- SOFTWARE
    -- open terminal
    awful.key(
        { modkey, "Shift",  }, "Return",
        function ()
            awful.spawn("kitty")
        end,
        { description = "open terminal", group = "software" }
    ),

    -- open rofi
    awful.key(
        { modkey,           }, "Return",
        function ()
            awful.spawn('rofi -show omni -modi "omni:omnirun"')
        end,
        { description = "open rofi", group = "software" }
    ),

    -- select screenshot area and save to clipboard (1s delay)
    awful.key(
        { modkey, "Control" }, "Print",
        function ()
            awful.spawn.with_shell("sleep 1 && screenshot-clipboard")
        end,
        { description = "delayed screenshot", group = "software" }
    ),

    -- select screenshot area and save to clipboard
    awful.key(
        { modkey, "Shift",  }, "Print",
        function ()
            awful.spawn.with_shell("screenshot-clipboard -s")
        end,
        { description = "screenshot selection", group = "software" }
    ),

    -- screenshot everything and save to clipboard
    awful.key(
        { modkey,           }, "Print",
        function ()
            awful.spawn.with_shell("screenshot-clipboard")
        end,
        { description = "screenshot everything", group = "software" }
    ),

    -- volume off
    awful.key(
        {                   }, "#121",
        function ()
            pulse.set_volume("0%")
        end,
        { description = "volume off", group = "software" }
    ),

    -- volume up
    awful.key(
        {                   }, "#123",
        function ()
            pulse.change_volume("+5%")
        end,
        { description = "volume up", group = "software" }
    ),

    -- volume down
    awful.key(
        {                   }, "#122",
        function ()
            pulse.change_volume("-5%")
        end,
        { description = "volume down", group = "software" }
    ),

    -- run sct (some apps mess up gamma ramps?)
    awful.key(
        { modkey            }, "t",
        function ()
            awful.spawn.with_shell("sct 3500")
        end,
        { description = "rerun sct", group = "software" }
    )
)

-- add tag keybindings
for i = 1, 4 do
    globalkeys = gears.table.join(globalkeys,
        -- view tag
        awful.key(
            { modkey,           }, "#" .. i + 9,
            function ()
                local screen = awful.screen.focused()
                local tag = screen.tags[i]
                if tag then
                    tag:view_only()
                end
            end,
            { description = "view tag #" .. i, group = "tag" }
        ),

        -- move focused client to tag
        awful.key(
            { modkey, "Shift",  }, "#" .. i + 9,
            function ()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:move_to_tag(tag)
                    end
                end
            end,
            { description = "move focused client to tag #" .. i, group = "tag" }
        )
    )
end

local clientkeys = gears.table.join(
    -- toggle fullscreen for current client
    awful.key(
        { modkey,           }, "f",
        function (c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end,
        { description = "toggle fullscreen", group = "client" }
    ),

    -- close current client
    awful.key(
        { modkey,           }, "c",
        function (c)
            c:kill()
        end,
        { description = "close client", group = "client" }
    ),

    -- move client to next tag
    awful.key(
        { modkey, "Shift",  }, "Right",
        function (c)
            local i = client.focus.screen.selected_tag.index
            local tag = client.focus.screen.tags[i + 1]
            if tag then
                c:tags({ tag })
                awful.tag.viewnext()
            end
        end,
        { description = "move client to next tag", group = "client" }
    ),

    -- move client to previous tag
    awful.key(
        { modkey, "Shift",  }, "Left",
        function (c)
            local i = client.focus.screen.selected_tag.index
            local tag = client.focus.screen.tags[i - 1]
            if tag then
                c:tags({ tag })
                awful.tag.viewprev()
            end
        end,
        { description = "move client to previous tag", group = "client" }
    ),

    -- move client to master
    awful.key(
        { modkey,           }, "m",
        function (c)
            c:swap(awful.client.getmaster())
        end,
        { description = "move client to master", group = "client" }
    )
)

local clientbuttons = gears.table.join(
    -- focus client
    awful.button({}, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
    end),

    -- move client
    awful.button({ modkey }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
        awful.mouse.client.move(c)
    end),

    -- resize client
    awful.button({ modkey }, 3, function (c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
        awful.mouse.client.resize(c)
    end)
)

local tagbuttons = gears.table.join(
    -- switch current tag
    awful.button({}, 1, function (t)
        t:view_only()
    end),

    -- switch focused client to tag
    awful.button({ modkey }, 1, function (t)
        if client.focus then
            client.focus:move_to_tag(t)
        end
    end),

    -- toggle tag visibility
    awful.button({}, 3, awful.tag.viewtoggle),

    -- toggle client visibility on tag
    awful.button({ modkey }, 3, function (t)
        if client.focus then
            client.focus:toggle_tag(t)
        end
    end)
)

local taskbuttons = gears.table.join(
    -- toggle minimized/focused
    awful.button({}, 1, function (c)
        if c == client.focus then
            c.minimized = true
        else
            c:emit_signal(
                "request::activate",
                "tasklist",
                { raise = true }
            )
        end
    end),

    -- list open clients
    awful.button({}, 3, function ()
        awful.menu.client_list({ theme = { width = 250 }})
    end),

    -- next client
    awful.button({}, 4, function()
        awful.client.focus.byidx(1)
    end),

    -- previous client
    awful.button({}, 5, function()
        awful.client.focus.byidx(-1)
    end)
)

return {
    global_keys = globalkeys,
    client_keys = clientkeys,
    client_buttons = clientbuttons,

    taglist_buttons = tagbuttons,
    tasklist_buttons = taskbuttons,

    client_keys_func = function()
        awful.mouse.append_client_mousebindings(clientbuttons)
    end,
    client_buttons_func = function()
        awful.keyboard.append_client_keybindings(clientkeys)
    end
}
