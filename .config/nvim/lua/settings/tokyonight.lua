-- neovim config
-- settings/tokyonight.lua

-- redefine a few colors, since the color override functionality
-- doesn't work well inside nested tables
local green = "#9ece6a"
local purple = "#9d7cd8"
local red = "#f7768e"

-- color scheme settings
vim.g.tokyonight_colors = {
    border_highlight = "purple",    -- make window borders more visible
    comment = "purple",             -- make comments more visible

    -- git diff colors
    git = {
        add = green,
        change = purple,
        delete = red
    },
    gitSigns = {
        add = green,
        change = purple,
        delete = red
    }
}

-- set colorscheme
vim.cmd[[colorscheme tokyonight]]

-- set line number colors
vim.api.nvim_exec([[
    augroup LineNrColor
        autocmd!
        autocmd BufEnter * highlight LineNr guifg=#5081c0 | highlight CursorLineNR guifg=#FFba00
    augroup END
]], false)

-- set Diff<X> highlight group colors
vim.cmd[[highlight LDiffAdd guifg=#9ece6a | highlight LDiffChange guifg=#9d7cd8 | highlight LDiffDelete guifg=#f7768e]]
