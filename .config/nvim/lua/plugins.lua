-- neovim config
-- plugins.lua

return {
    -- nvim-lspconfig
    "neovim/nvim-lspconfig",

    -- lsp-project
    {
        "woofdoggo/lsp-project.nvim",
        dependencies = "nvim-lua/plenary.nvim"
    },

    -- omnisharp-extended-lsp.nvim
    {
        "Hoffs/omnisharp-extended-lsp.nvim",
        pin = true
    },

    -- nvim-cmp
    "hrsh7th/nvim-cmp",

    -- cmp-nvim-lsp
    "hrsh7th/cmp-nvim-lsp",
    
    -- vim-vsnip
    "hrsh7th/vim-vsnip",

    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = "nvim-lua/plenary.nvim"
    },

    -- telescope-ui-select.nvim
    {
        "nvim-telescope/telescope-ui-select.nvim",
        dependencies = "nvim-telescope/telescope.nvim"
    },

    -- which-key
    "folke/which-key.nvim",

    -- pounce.nvim
    "rlane/pounce.nvim",

    -- gitsigns
    {
        "lewis6991/gitsigns.nvim",
        dependencies = "nvim-lua/plenary.nvim"
    },

    -- impatient.nvim
    "lewis6991/impatient.nvim",

    -- tokyonight.nvim
    "folke/tokyonight.nvim"
}
