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
        repeat_rate = 20,
        repeat_delay = 300,

        sensitivity = 3.1701,
        confine_pointer = true,
    },
    theme = {
        background = "#966fd6",
        ninb_anchor = "right",

        cursor_icon = "yellow_pink",
        cursor_theme = "crosshair",
    },

    experimental = {
        jit = true,
        tearing = false,
    }
}

-- Helper functions
local make_image = function(path, dst)
    local this = nil

    return function(enable)
        if enable and not this then
            this = waywall.image(path, dst)
        elseif this and not enable then
            this:close()
            this = nil
        end
    end
end

local make_mirror = function(options)
    local this = nil

    return function(enable)
        if enable and not this then
            this = waywall.mirror(options)
        elseif this and not enable then
            this:close()
            this = nil
        end
    end
end

local make_res = function(width, height, enable, disable)
    return function()
        local active_width, active_height = waywall.active_res()

        if active_width == width and active_height == height then
            waywall.set_resolution(0, 0)
            disable()
        else
            waywall.set_resolution(width, height)
            enable()
        end
    end
end

-- Mirrors and resolution toggles
local mirrors = {
    eye_measure = make_mirror({
        src = {x = 130,     y = 7902,   w = 60,     h = 580},
        dst = {x = 0,       y = 315,    w = 800,    h = 450},
    }),
    tall_pie = make_mirror({
        src = {x = 0,       y = 15980,  w = 320,    h = 260},
        dst = {x = 480,     y = 765,    w = 320,    h = 260},
    }),

    f3_ccache = make_mirror({
        src = {x = 101,     y = 55,     w = 27,      h = 9},
        dst = {x = 1120,    y = 504,    w = 108,     h = 36},
        color_key  = {
            input  = "#dddddd",
            output = "#ffffff",
        },
    }),
    f3_ecount = make_mirror({
        src = {x = 0,       y = 36,     w = 49,     h = 9},
        dst = {x = 1120,    y = 540,    w = 196,    h = 36},
        color_key  = {
            input  = "#dddddd",
            output = "#ffffff",
        },
    }),

    tall_pie_entities = make_mirror({
        src = {x = 227,     y = 16163,  w = 84,     h = 42},
        dst = {x = 1120,    y = 650,    w = 504,    h = 252},
        color_key  = {
            input  = "#e145c2",
            output = "#e145c2",
        },
    }),
    tall_pie_blockentities = make_mirror({
        src = {x = 227,     y = 16163,  w = 84,     h = 42},
        dst = {x = 1120,    y = 650,    w = 504,    h = 252},
        color_key  = {
            input  = "#e96d4d",
            output = "#e96d4d",
        },
    }),
    tall_pie_unspec = make_mirror({
        src = {x = 227,     y = 16163,  w = 84,    h = 42},
        dst = {x = 1120,    y = 650,    w = 504,    h = 252},
        color_key  = {
            input  = "#45cb65",
            output = "#45cb65",
        },
    }),

    thin_pie_entities = make_mirror({
        src = {x = 227,     y = 679,    w = 84,     h = 42},
        dst = {x = 1120,    y = 650,    w = 504,    h = 252},
        color_key = {
            input  = "#e145c2",
            output = "#e145c2",
        },
    }),
    thin_pie_blockentities = make_mirror({
        src = {x = 227,     y = 679,    w = 84,     h = 42},
        dst = {x = 1120,    y = 650,    w = 504,    h = 252},
        color_key = {
            input  = "#e96d4d",
            output = "#e96d4d",
        },
    }),
    thin_pie_unspec = make_mirror({
        src = {x = 227,     y = 679,    w = 84,     h = 42},
        dst = {x = 1120,    y = 650,    w = 504,    h = 252},
        color_key = {
            input  = "#45cb65",
            output = "#45cb65",
        },
    }),
}

local images = {
    overlay = make_image(
        "/home/dog/pix/boatoverlay.png",
        {x = 0, y = 315, w = 800, h = 450}
    )
}

local show_mirrors = function(eye, f3, tall, thin)
    images.overlay(eye)
    mirrors.eye_measure(eye)
    mirrors.tall_pie(eye)

    mirrors.f3_ccache(f3)
    mirrors.f3_ecount(f3)

    mirrors.tall_pie_entities(tall)
    mirrors.tall_pie_blockentities(tall)
    mirrors.tall_pie_unspec(tall)

    mirrors.thin_pie_entities(thin)
    mirrors.thin_pie_blockentities(thin)
    mirrors.thin_pie_unspec(thin)
end

local thin_enable = function()
    waywall.set_sensitivity(0)
    show_mirrors(false, true, false, true)
end

local thin_disable = function()
    show_mirrors(false, false, false, false)
end

local tall_enable = function()
    waywall.set_sensitivity(0.1)
    show_mirrors(true, true, true, false)
end

local tall_disable = function()
    waywall.set_sensitivity(0)
    show_mirrors(false, false, false, false)
end

local tall_preemp_enable = function()
    waywall.set_sensitivity(0)
    show_mirrors(true, true, true, false)
end

local tall_preemp_disable = function()
    waywall.set_sensitivity(0)
    show_mirrors(false, false, false, false)
end

local wide_enable = function()
    waywall.set_sensitivity(0)
    show_mirrors(false, false, false, false)
end

local wide_disable = function()
    -- No-op
end

local resolutions = {
    thin            = helpers.ingame_only(make_res(320, 900, thin_enable, thin_disable)),
    tall            = make_res(320, 16384, tall_enable, tall_disable),
    tall_preemptive = helpers.ingame_only(make_res(320, 16384, tall_preemp_enable, tall_preemp_disable)),
    wide            = make_res(1920, 320, wide_enable, wide_disable),
}

-- Actions
local atum_reset = function()
    waywall.press_key("F12")
    waywall.set_resolution(0, 0)
end

local exec_ninb = function()
    waywall.exec("ninb")
end

local set_keymap = function(layout)
    return helpers.ingame_only(function()
        waywall.set_keymap({layout = layout})
    end)
end

config.actions = {
    -- Resolutions
    ["T"]               = resolutions.thin,
    ["Shift-T"]         = resolutions.thin,
    ["Ctrl-G"]          = resolutions.tall,
    ["G"]               = resolutions.tall_preemptive,
    ["Ctrl-B"]          = resolutions.wide,

    -- Keymap
    ["Comma"]           = set_keymap("mc"),
    ["Period"]          = set_keymap("us"),

    -- Ninjabrain Bot
    ["H"]               = helpers.ingame_only(helpers.toggle_floating),
    ["Shift-H"]         = helpers.ingame_only(helpers.toggle_floating),
    ["Ctrl-Shift-N"]    = exec_ninb,

    -- Miscellaneous
    ["Ctrl-Shift-D"]    = atum_reset,
}

return config