local waywall = require("waywall")
local helpers = require("waywall.helpers")

local M = {}

M.make_res = function(width, height, sens, ingame, ignore_f3)
    local toggle = helpers.toggle_res(width, height, sens)

    return function()
        if waywall.get_key("f3") and not ignore_f3 then
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

M.read_file = function(name)
    local file = io.open("/home/dog/.config/waywall/" .. name, "r")
    local data = file:read("*a")
    file:close()

    return data
end

return M
