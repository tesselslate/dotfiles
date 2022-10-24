-- neovim config
-- colors.lua

-- setup colorschemes
require("tokyonight").setup({
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
    },
    dim_inactive = true,
    on_highlights = function(hl, c)
        hl.LineNr = {
            fg = c.fg_dark,
        }
    end
})

local current = ""

-- load colorscheme
local function load_colorscheme()
    local scheme = io.open("/home/dog/.config/colorscheme")
    if not scheme then
        print("failed to load colorscheme")
        return
    end
    local name = scheme:read("*l")
    scheme:close()
    current = name

    vim.cmd("colorscheme " .. name)
end

local function watch()
    local fh = vim.loop.new_fs_event()
    vim.loop.fs_event_start(
        fh,
        "/home/dog/.config/colorscheme",
        { stat = false },
        function(err, _, _)
            if err then
                print("colorscheme watch error" .. err)
                vim.loop.fs_event_stop(fh)
            else
                vim.schedule(function()
                    load_colorscheme()
                    require("settings.feline").set_colors()
                    vim.api.nvim_command(":redraw!")
                end)
            end
        end
    )
end

require("plenary.async").run(watch, function() end)
load_colorscheme()

return function()
    return require("feline.themes." .. current)
end
