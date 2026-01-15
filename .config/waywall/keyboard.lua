local waywall = require("waywall")

local chatting_text = nil
local pie_text = nil

local is_crafting = true
local is_hotbar = true

local M = {}

-- configuration
local keymap_chatting = {layout = "us", options = "caps:none"}
local keymap_crafting = {layout = "mc", rules = "mc", options = "caps:none"}

local remaps = {
    always = {
        ["MB4"]         = "Home",       ["Home"]        = "F24",
        ["MB5"]         = "RightShift", ["RightShift"]  = "F24",
        ["CapsLock"]    = "0",          ["0"]           = "F24",
        ["LeftAlt"]     = "Backspace",  ["Backspace"]   = "F24",

        ["A"]           = "F20",
        ["D"]           = "F21",
    },
    hotbar = {
        ["1"] = "F13",
        ["2"] = "F14",
        ["3"] = "F15",
        ["4"] = "F16",
        ["5"] = "F17",
    },
    pie = {},
}

for k, v in pairs(remaps.always) do
    remaps.pie[k] = v
    remaps.hotbar[k] = v
end

-- functions
M.do_keybinds = function()
    return is_crafting
end

M.toggle_layout = function()
    if is_crafting then
        is_crafting = false

        waywall.set_keymap(keymap_chatting)
        waywall.set_remaps({})

        if not chatting_text then
            chatting_text = waywall.text("layout", {
                x = 10, y = 960,
                color = "#ee4444", size = 5,
            })
        end
    else
        is_crafting = true

        waywall.set_keymap(keymap_crafting)
        waywall.set_remaps(is_hotbar and remaps.hotbar or remaps.pie)

        if chatting_text then
            chatting_text:close()
            chatting_text = nil
        end
    end
end

M.toggle_remaps = function()
    if is_hotbar then
        is_hotbar = false

        waywall.set_remaps(remaps.pie)

        if not pie_text then
            pie_text = waywall.text("======", {
                x = 1616, y = 650,
                color = "#4444ee", size = 5,
            })
        end
    else
        is_hotbar = true

        waywall.set_remaps(remaps.hotbar)

        if pie_text then
            pie_text:close()
            pie_text = nil
        end
    end
end

-- initialization
waywall.listen("load", function()
    waywall.set_keymap(keymap_crafting)
    waywall.set_remaps(remaps.hotbar)
end)

return M
