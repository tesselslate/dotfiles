local helpers = require("waywall.helpers")

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
