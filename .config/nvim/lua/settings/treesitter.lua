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
        "yaml",
        "zig",
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
})

local parserconfig = require("nvim-treesitter.parsers").get_parser_configs()

parserconfig.hare = {
    install_info = {
        url = "~/documents/clones/tree-sitter-hare",
        files = {"src/parser.c"},
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
    },
    filetype = "ha",
}
