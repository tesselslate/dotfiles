-- neovim config
-- colors/init.lua

local M = {}

-- recursively merge two tables
local function merge(lhs, rhs)
    for k, v in pairs(rhs) do
        if lhs[k] ~= nil and type(lhs[k]) == "table" then
            merge(lhs[k], v)
        else
            lhs[k] = v
        end
    end

    return lhs
end

-- loads the given colorscheme, or the default if unspecified
function M.load(scheme_name)
    -- return if this scheme is already loaded
    if vim.g.colors_name and vim.g.colors_name == scheme_name then
        return
    end

    -- clear previous colorscheme (if any)
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    -- get active colorscheme
    if scheme_name == nil then
        scheme_name = os.getenv("NVIM_COLORSCHEME")
        if scheme_name == nil or scheme_name:len() == 0 then
            scheme_name = "tokyonight_storm" -- fallback
        end
    end

    vim.g.colors_name = scheme_name

    -- load colorscheme
    local colorscheme = require("colors.themes." .. scheme_name)

    -- load highlights
    -- based off of:
    -- https://github.com/neovim/neovim/blob/master/runtime/lua/vim/highlight.lua
    -- https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/util.lua
    for k, v in pairs(colorscheme) do
        if v.link then
            vim.cmd(string.format("highlight! link %s %s", k, v.link))
        else
            local opts = {}

            if v.style then
                table.insert(opts, "gui=" .. v.style)
            else
                table.insert(opts, "gui=NONE")
            end

            if v.fg then
                table.insert(opts, "guifg=" .. v.fg)
            else
                table.insert(opts, "guifg=NONE")
            end

            if v.bg then
                table.insert(opts, "guibg=" .. v.bg)
            else
                table.insert(opts, "guibg=NONE")
            end

            if v.sp then
                table.insert(opts, "guisp=" .. v.sp)
            end

            vim.cmd(string.format("highlight %s %s", k, table.concat(opts, " ")))
        end
    end
end

return M
