-- neovim config
-- plugins.lua

return {
    { "echasnovski/mini.nvim" },
    { "folke/tokyonight.nvim" },
    { "folke/which-key.nvim" },
    { "Hoffs/omnisharp-extended-lsp.nvim", pin = true },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/vim-vsnip" },
    { "neovim/nvim-lspconfig" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim", dependencies = "nvim-telescope/telescope.nvim" },
    { "lewis6991/gitsigns.nvim", dependencies = "nvim-lua/plenary.nvim" },
    { "lewis6991/impatient.nvim" },
    { "rlane/pounce.nvim" },
    { "woofdoggo/lsp-project.nvim", dependencies = "nvim-lua/plenary.nvim" },
}
