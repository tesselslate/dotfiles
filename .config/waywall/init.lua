local waywall = require("waywall")
local helpers = require("waywall.helpers")

local keyboard = require("keyboard")
local mirrors = require("mirrors")
local ninb = require("ninb")
local util = require("util")

-- Adding libjemalloc to LD_PRELOAD causes ASAN to complain, since the initial
-- execution of waywall before the environment is reset has jemalloc loaded.
os.setenv("LD_PRELOAD", "/usr/lib/libjemalloc.so")

local config = {
    input = {
        repeat_rate = 50,
        repeat_delay = 180,

        sensitivity = 4.8,
        confine_pointer = true,
    },
    theme = {
        background = "#2d0707",
        ninb_anchor = "right",
        ninb_opacity = 0.8,

        cursor_icon = "yellow_pink",
        cursor_theme = "crosshair",
    },
    shaders = {
        ["f3"] = {
            fragment = util.read_file("f3.frag"),
        },
        ["pie_chart"] = {
            fragment = util.read_file("pie_chart.frag"),
        },
    },

    experimental = {
        jit = true,
        tearing = false,
    }
}

local resolutions = { --            width    height  sens    ingame  blockf3
    thin            = util.make_res(320,     900,    0,      true,   true),
    eye             = util.make_res(320,     16384,  0.1,    false,  false),
    tall            = util.make_res(320,     16384,  0,      true,   false),
    wide            = util.make_res(1880,    320,    0,      true,   false),
}

-- Actions
local atum_reset = function()
    waywall.press_key("F23")
    waywall.set_resolution(0, 0)
end

local auto_ninb = function()
    if waywall.get_key("f3") then
        waywall.show_floating(true)
    end
    return false
end

config.actions = {
    -- Resolutions
    ["*-T"]             = resolutions.thin,
    ["*-Ctrl-G"]        = resolutions.eye,
    ["*-G"]             = resolutions.tall,
    ["*-Super_L"]       = resolutions.wide,

    -- Ninjabrain Bot
    ["Ctrl-Shift-N"]    = ninb.exec,
    ["*-K"]             = ninb.toggle,

    ["*-C"]             = ninb.autoshow,
    ["*-Y"]             = ninb.keepauto,
    ["*-U"]             = ninb.keepauto,
    ["*-9"]             = ninb.keepauto,
    ["*-0"]             = ninb.keepauto,

    -- Miscellaneous
    ["Ctrl-Shift-D"]    = atum_reset,

    ["*-Grave"]         = helpers.ingame_only(keyboard.toggle_remaps),
    ["Ctrl-Grave"]      = keyboard.toggle_remaps,
}

for key, func in pairs(config.actions) do
    config.actions[key] = function()
        return keyboard.do_keybinds() and func() or false
    end
end

config.actions["*-F11"] = keyboard.toggle_layout

return config
