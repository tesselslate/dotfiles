-- neovim config
-- settings/nvim-treesitter.lua

local tsconfig = require("nvim-treesitter.configs")

tsconfig.setup({
    ensure_installed = {
        "bash",
        "c",
        "c_sharp",
        "cmake",
        "cpp",
        "css",
        "fish",
        "glsl",
        "go",
        "gomod",
        "graphql",
        "html",
        "java",
        "javascript",
        "json",
        "json5",
        "lua",
        "make",
        "markdown",
        "python",
        "rasi",
        "rust",
        "toml",
        "vim",
        "yaml"
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
})
