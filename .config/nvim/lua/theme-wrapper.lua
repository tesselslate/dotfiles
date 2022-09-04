-- neovim config
-- theme-wrapper.lua

local async = require("plenary.async")
local uv = vim.loop

local colors = nil
local M = {}

M.get_colors = function()
    return colors.colors
end

M.load = function()
    if colors ~= nil then
        for key, _ in pairs(colors.hls) do
            vim.api.nvim_command(":hi clear " .. key)
        end
    end
    package.loaded["theme"] = nil
    colors = require("theme")
    for key, value in pairs(colors.hls) do
        vim.api.nvim_set_hl(0, key, value)
    end
end

M.watch = function()
    local function watch()
        local fh = uv.new_fs_event()
        uv.fs_event_start(
            fh,
            "/home/dog/.config/colorscheme",
            {
                stat = false
            },
            function(err, _, _)
                if err then
                    print("watch error")
                    uv.fs_event_stop(fh)
                else
                    vim.schedule(function()
                        M.load()
                        require("settings.feline").set_colors()
                        vim.api.nvim_command(":redraw!")
                    end)
                end
            end
        )
    end

    async.run(watch)
end

return M
