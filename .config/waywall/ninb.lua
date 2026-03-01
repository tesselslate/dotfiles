local waywall = require("waywall")

local autoshow_text = nil
local autoshow_serial = 0

local M = {}

-- configuration
local autoshow_timeout = 8

local text_settings = {
    x = 1880,
    y = 1010,
    color = "#ec03fc",
    size = 2,
}

-- functions
M.set_text = function(text)
    if autoshow_text then
        autoshow_text:close()
        autoshow_text = nil
    end

    if not text then
        return
    end

    autoshow_text = waywall.text(text, text_settings)
end

M.autoshow = function()
    if not waywall.get_key("f3") then
        return false
    end

    if waywall.floating_shown() and not autoshow_text then
        return false
    end

    autoshow_serial = autoshow_serial + 1
    local serial = autoshow_serial

    waywall.press_key("C")
    waywall.show_floating(true)

    for i = autoshow_timeout, 1, -1 do
        if serial ~= autoshow_serial then
            return
        end

        M.set_text(tostring(i) .. "s")
        waywall.sleep(1000)
    end

    waywall.show_floating(false)
    M.set_text(nil)
end

M.exec = function()
    waywall.exec("ninb")
end

M.keepauto = function()
    M.set_text(nil)
    autoshow_serial = autoshow_serial + 1

    if not waywall.floating_shown() then
        waywall.show_floating(true)
    end

    return false
end

M.toggle = function()
    local state = waywall.state()

    local ingame = state.screen == "inworld" and state.inworld == "unpaused"
    local force = waywall.get_key("LeftCtrl") and waywall.get_key("Backspace")
    if (not ingame) and (not force) then
        return false
    end

    M.set_text(nil)
    autoshow_serial = autoshow_serial + 1

    if waywall.floating_shown() then
        waywall.show_floating(false)
    else
        waywall.show_floating(true)
    end
end

return M
