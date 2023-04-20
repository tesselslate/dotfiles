-- neovim config
-- plugins.lua

return {
    { "neovim/nvim-lspconfig" },
    { "woofdoggo/lsp-project.nvim", dependencies = "nvim-lua/plenary.nvim" },
    { "Hoffs/omnisharp-extended-lsp.nvim", pin = true },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/vim-vsnip" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim", dependencies = "nvim-telescope/telescope.nvim" },
    { "echasnovski/mini.nvim" },
    { "folke/which-key.nvim" },
    { "lewis6991/gitsigns.nvim", dependencies = "nvim-lua/plenary.nvim" },
    { "lewis6991/impatient.nvim" },
    { "folke/tokyonight.nvim" },
}
