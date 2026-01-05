local waywall = require("waywall")
local helpers = require("waywall.helpers")

-- I often build waywall with ASAN so I need to remove it from LD_PRELOAD
-- so that child processes do not load it.
os.setenv("LD_PRELOAD", "/usr/lib/libjemalloc.so")

os.setenv("MALLOC_CONF", "background_thread:true,narenas:2,dirty_decay_ms:15000,muzzy_decay_ms:15000")

local config = {
    input = {
        remaps = {
            ["MB4"] = "Home",
            ["MB5"] = "RightShift",
        },

        layout = "mc",
        repeat_rate = 50,
        repeat_delay = 180,

        sensitivity = 3.1701,
        confine_pointer = true,
    },
    theme = {
        background = "#966fd6",

        cursor_icon = "yellow_pink",
        cursor_theme = "crosshair",
    },

    experimental = {
        jit = true,
        tearing = false,
    }
}

-- State
local active_keymap = "mc"
local active_keymap_text = nil

local update_keymap_text = function()
    if active_keymap_text then
        active_keymap_text:close()
        active_keymap_text = nil
    end

    local state = waywall.state()
    if state.screen ~= "inworld" or state.inworld ~= "menu" then
        return
    end

    if active_keymap ~= "mc" then
        active_keymap_text = waywall.text("US layout active", {
            x = 10,
            y = 960,
            color = "#ee4444",
            size = 5
        })
    end
end

waywall.listen("state", update_keymap_text)

local set_keymap = function(layout)
    return function()
        waywall.set_keymap({layout = layout})

        active_keymap = layout
        update_keymap_text()
    end
end

config.actions = {
    -- Keymap
    ["Comma"]           = set_keymap("mc"),
    ["Period"]          = set_keymap("us"),
}

return config
