local waywall = require("waywall")
local helpers = require("waywall.helpers")

-- Adding libjemalloc to LD_PRELOAD causes ASAN to complain, since the initial
-- execution of waywall before the environment is reset has jemalloc loaded.
os.setenv("LD_PRELOAD", "/usr/lib/libjemalloc.so")

local read_file = function(name)
    local file = io.open("/home/dog/.config/waywall/" .. name, "r")
    local data = file:read("*a")
    file:close()

    return data
end

local remaps = {
    always = {
        ["MB4"]         = "Home",       ["Home"]        = "MB4",
        ["MB5"]         = "RightShift", ["RightShift"]  = "MB5",
        ["CapsLock"]    = "0",          ["0"]           = "CapsLock",
    },
    pie = {},
    hotbar = {
        ["0"] = "H",
        ["1"] = "B",
        ["2"] = "N",
        ["3"] = "M",
        ["4"] = "Comma",
        ["5"] = "Dot",
    },
}

for k, v in pairs(remaps.always) do
    remaps.pie[k] = v
    remaps.hotbar[k] = v
end

local config = {
    input = {
        remaps = remaps.hotbar,

        layout = "mc",
        repeat_rate = 50,
        repeat_delay = 180,

        sensitivity = 3.1701,
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
        ["pie_chart"] = {
            vertex = read_file("pie_chart.vert"),
            fragment = read_file("pie_chart.frag"),
        },
    },

    experimental = {
        jit = true,
        tearing = false,
    }
}

-- State
local active_keymap = "mc"
local active_keymap_text = nil

local active_remaps = "hotbar"
local active_remaps_text = nil
local active_remaps_debounce = 0

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

local update_remaps_text = function()
    if active_remaps_text then
        active_remaps_text:close()
        active_remaps_text = nil
    end

    if active_remaps == "pie" then
        active_remaps_text = waywall.text("======", {
            x = 1616,
            y = 650,
            color = "#4444ee",
            size = 5
        })
    end
end

waywall.listen("state", update_keymap_text)

-- Eye magnifier
helpers.res_mirror(
    {
        src = {x = 130,     y = 7902,   w = 60,     h = 580},
        dst = {x = 0,       y = 315,    w = 800,    h = 450},
    },
    320, 16384
)
helpers.res_image(
    "/home/dog/pix/boatoverlay.png",
    {
        dst = {x = 0,       y = 315,    w = 800,    h = 450},
    },
    320, 16384
)

-- Tall pie
helpers.res_mirror(
    {
        src = {x = 0,       y = 15980,  w = 320,    h = 260},
        dst = {x = 800,     y = 586,    w = 320,    h = 260},
    },
    320, 16384
)

-- F3 Client Chunk Cache
helpers.res_mirror(
    {
        src = {x = 101,     y = 55,     w = 27,      h = 9},
        dst = {x = 880,     y = 680,    w = 108,     h = 36},
        color_key  = {
            input  = "#dddddd",
            output = "#ffffff",
        },
    },
    320, 900
)

-- F3 Entity Count
helpers.res_mirror(
    {
        src = {x = 0,       y = 36,     w = 49,     h = 9},
        dst = {x = 880,     y = 640,    w = 196,    h = 36},
        color_key  = {
            input  = "#dddddd",
            output = "#ffffff",
        },
        depth = 1,
    },
    320, 900
)
-- F3 Entity Count
helpers.res_mirror(
    {
        src = {x = 0,       y = 36,     w = 49,     h = 9},
        dst = {x = 880,     y = 640,    w = 196,    h = 36},
        color_key  = {
            input  = "#dddddd",
            output = "#ffffff",
        },
        depth = 1,
    },
    320, 16384
)

-- Tall pie numbers
helpers.res_mirror(
    {
        src = {x = 227,     y = 16163,  w = 84,     h = 42},
        dst = {x = 1120,    y = 600,    w = 504,    h = 252},
        shader = "pie_chart",
    },
    320, 16384
)

-- Thin pie numbers
helpers.res_mirror(
    {
        src = {x = 227,     y = 679,    w = 84,     h = 42},
        dst = {x = 1120,    y = 600,    w = 504,    h = 252},
        shader = "pie_chart",
    },
    320, 900
)

-- Tall subtitles
helpers.res_mirror(
    {
        src = {x = 195,     y = 16279,  w = 124,    h = 80},
        dst = {x = 1545,    y = 765,    w = 372,    h = 240},
    },
    320, 16384
)

-- Thin subtitles
helpers.res_mirror(
    {
        src = {x = 195,     y = 795,    w = 124,    h = 80},
        dst = {x = 1545,    y = 765,    w = 372,    h = 240},
    },
    320, 900
)

local make_res = function(width, height, sens, ingame)
    local toggle = helpers.toggle_res(width, height, sens)

    return function()
        if waywall.get_key("f3") then
            return false
        end

        local state = waywall.state()
        local aw, ah = waywall.active_res()

        local ok = (not ingame) or (state.screen == "inworld" and state.inworld == "unpaused")
        if ok then
            toggle()
            return true
        else
            if aw ~= 0 then
                waywall.set_resolution(0, 0)
                waywall.set_sensitivity(0)
                return true
            end

            return false
        end
    end
end

local resolutions = {
    thin            = make_res(320, 900, 0, true),
    eye             = make_res(320, 16384, 0.1, false),
    tall            = make_res(320, 16384, 0, true),
    wide            = make_res(1880, 320, 0, true),
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
    return function()
        waywall.set_keymap({layout = layout})

        active_keymap = layout
        update_keymap_text()
    end
end

local toggle_remaps = function()
    if active_remaps == "hotbar" then
        active_remaps = "pie"
        waywall.set_remaps(remaps.pie)
    else
        active_remaps = "hotbar"
        waywall.set_remaps(remaps.hotbar)
    end

    update_remaps_text()
end

local toggle_remaps_doubletap = function()
    local prev = active_remaps_debounce
    local time = waywall.current_time()
    active_remaps_debounce = time

    if time - prev >= 250 then
        return false
    end

    toggle_remaps()
end

config.actions = {
    -- Resolutions
    ["*-T"]             = resolutions.thin,
    ["*-Ctrl-G"]        = resolutions.eye,
    ["*-B"]             = resolutions.wide,
    ["*-Grave"]         = resolutions.tall,

    -- Keymap
    ["*-F11"]           = set_keymap("mc"),
    ["*-F12"]           = set_keymap("us"),
    ["*-Control_L"]     = toggle_remaps_doubletap,
    ["*-F1"]            = toggle_remaps,

    -- Ninjabrain Bot
    ["*-H"]             = helpers.ingame_only(helpers.toggle_floating),
    ["*-Alt-H"]         = helpers.toggle_floating,
    ["Ctrl-Shift-N"]    = exec_ninb,

    -- Miscellaneous
    ["Ctrl-Shift-D"]    = atum_reset,
}

return config
