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

    -- trouble
    {
        "folke/trouble.nvim",
        dependencies = "kyazdani42/nvim-web-devicons"
    },

    -- lsp_lines.nvim
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",

    -- nvim-cmp
    "hrsh7th/nvim-cmp",

    -- cmp-nvim-lsp
    "hrsh7th/cmp-nvim-lsp",
    
    -- vim-vsnip
    "hrsh7th/vim-vsnip",

    -- nvim-tree
    {
        "kyazdani42/nvim-tree.lua",
        dependencies = "kyazdani42/nvim-web-devicons"
    },

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

    -- feline.nvim
    "feline-nvim/feline.nvim",

    -- tokyonight.nvim
    "folke/tokyonight.nvim"
}
