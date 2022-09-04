-- neovim config
-- plugins.lua

-- load packer plugins
return require("packer").startup(function(use)
    -- packer.nvim
    use "wbthomason/packer.nvim"

    -- nvim-lspconfig
    use "neovim/nvim-lspconfig"

    -- lsp-project
    use {
        "woofdoggo/lsp-project.nvim",
        requires = "nvim-lua/plenary.nvim"
    }

    -- trouble
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- code-action-menu
    use "weilbith/nvim-code-action-menu"

    -- lightspeed
    use "ggandor/lightspeed.nvim"

    -- nvim-cmp
    use "hrsh7th/nvim-cmp"

    -- cmp-nvim-lsp
    use "hrsh7th/cmp-nvim-lsp"

    -- cmp-vsnip
    use "hrsh7th/cmp-vsnip"

    -- vsnip
    use "hrsh7th/vim-vsnip"

    -- mini.nvim
    use "echasnovski/mini.nvim"

    -- nvim-tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    -- telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim"
    }

    -- which-key
    use "folke/which-key.nvim"

    -- colorizer
    use "norcalli/nvim-colorizer.lua"

    -- gitsigns
    use {
        "lewis6991/gitsigns.nvim",
        requires = "nvim-lua/plenary.nvim"
    }

    -- dressing
    use "stevearc/dressing.nvim"

    -- impatient.nvim
    use "lewis6991/impatient.nvim"
end)
