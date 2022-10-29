-- neovim config
-- settings/mini.lua

require("mini.comment").setup({
    mappings = {
        comment = "gC",
        comment_line = "gc"
    }
})

require("mini.starter").setup({
    header = "neovim"
})

require("mini.tabline").setup({})
