-- neovim config
-- colors/util.lua

local M = {}

-- https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/util.lua
function M.hex2rgb(hex_str)
    local hex = "[abcdef0-9][abcdef0-9]"
    local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
    hex_str = string.lower(hex_str)

    assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

    local r, g, b = string.match(hex_str, pat)
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

-- https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/util.lua
function M.blend(fg, bg, alpha)
    bg = M.hex2rgb(bg)
    fg = M.hex2rgb(fg)

    local blendChannel = function(i)
        local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format("#%02X%02X%02X",
        blendChannel(1), blendChannel(2), blendChannel(3))
end

-- https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/util.lua
function M.darken(hex, amount, bg)
    return M.blend(hex, bg or "#000000", math.abs(amount))
end

-- https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/util.lua
function M.lighten(hex, amount, fg)
    return M.blend(hex, fg or "#ffffff", math.abs(amount))
end

return M
