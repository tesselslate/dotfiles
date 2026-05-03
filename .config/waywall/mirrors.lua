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
    "/home/dog/.config/waywall/overlay.png",
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
        shader = "pie_chart",
    },
    320, 16384
)

-- Tall hotbar
helpers.res_mirror(
    {
        src = {x = 50,      y = 16344,  w = 220,    h = 40},
        dst = {x = 630,     y = 960,    w = 660,    h = 120},
    },
    320, 16384
)



-- Thin C count
helpers.res_mirror(
    {
        src = {x = 0,       y = 28,     w = 49,     h = 9},
        dst = {x = 1120,    y = 400,    w = 196,    h = 36},
        -- shader = "f3",
        depth = 1,
    },
    320, 900
)

-- Tall C count
helpers.res_mirror(
    {
        src = {x = 0,       y = 28,     w = 49,     h = 9},
        dst = {x = 1120,    y = 400,    w = 196,    h = 36},
        -- shader = "f3",
        depth = 1,
    },
    320, 16384
)



-- Thin entity count
helpers.res_mirror(
    {
        src = {x = 0,       y = 36,     w = 49,     h = 9},
        dst = {x = 1120,    y = 440,    w = 196,    h = 36},
        -- shader = "f3",
        depth = 1,
    },
    320, 900
)

-- Tall entity count
helpers.res_mirror(
    {
        src = {x = 0,       y = 36,     w = 49,     h = 9},
        dst = {x = 1120,    y = 440,    w = 196,    h = 36},
        -- shader = "f3",
        depth = 1,
    },
    320, 16384
)



-- Thin pie numbers
helpers.res_mirror(
    {
        src = {x = 228,     y = 680,    w = 32,     h = 24},
        dst = {x = 1120,    y = 600,    w = 196,    h = 144},
    },
    320, 900
)

-- Tall pie numbers
helpers.res_mirror(
    {
        src = {x = 228,     y = 16164,  w = 32,     h = 24},
        dst = {x = 1120,    y = 600,    w = 196,    h = 144},
    },
    320, 16384
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



-- Thin chat
helpers.res_mirror(
    {
        src = {x = 0,       y = 816,    w = 160,    h = 44},
        dst = {x = 0,       y = 828,    w = 480,    h = 132},
    },
    320, 900
)

-- Tall chat
helpers.res_mirror(
    {
        src = {x = 0,       y = 16300,  w = 160,    h = 44},
        dst = {x = 0,       y = 828,    w = 480,    h = 132},
    },
    320, 16384
)



-- Thin pie entity count
helpers.res_mirror(
    {
        src = {x = 14,       y = 38,     w = 5,     h = 7},
        dst = {x = 930,      y = 782,    w = 40,    h = 56},
        depth = 1,
    },
    320, 900
)

-- Tall pie entity count
helpers.res_mirror(
    {
        src = {x = 14,       y = 38,     w = 5,     h = 7},
        dst = {x = 930,      y = 782,    w = 40,    h = 56},
        depth = 1,
    },
    320, 16384
)
