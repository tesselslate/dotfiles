-- neovim config
-- settings/nvim-treesitter.lua

local tsconfig = require("nvim-treesitter.configs")

tsconfig.setup({
    ensure_installed = "maintained",

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
})
