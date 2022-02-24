-- neovim config
-- plugins.lua

-- load packer plugins
return require("packer").startup(function(use)
    -- packer.nvim
    use "wbthomason/packer.nvim"

    -- ====================
    -- autocompletion
    -- ====================

    -- nvim-lspconfig (LSP)
    use "neovim/nvim-lspconfig"

    -- lsp-project (per-directory LSP settings)
    use {
        "woofdoggo/lsp-project.nvim",
        requires = "nvim-lua/plenary.nvim"
    }

    -- nvim-cmp (autocompletion)
    use "hrsh7th/nvim-cmp"

    -- cmp-nvim-lsp (LSP autocompletion sources)
    use "hrsh7th/cmp-nvim-lsp"

    -- vim-vsnip (snippets)
    use "hrsh7th/vim-vsnip"

    -- ====================
    -- useful bits
    -- ====================

    -- nvim-tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- nvim-treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    -- telescope.nvim
    use {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim"
    }

    -- which-key.nvim
    use "folke/which-key.nvim"

    -- nvim-colorizer
    use "norcalli/nvim-colorizer.lua"

    -- ====================
    -- environment
    -- ====================

    -- tokyonight.nvim
    use "folke/tokyonight.nvim"

    -- bufferline.nvim
    use {
        "akinsho/bufferline.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- lualine.nvim
    use {
        "nvim-lualine/lualine.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- ====================
    -- git
    -- ====================

    -- gitsigns.nvim
    use {
        "lewis6991/gitsigns.nvim",
        requires = "nvim-lua/plenary.nvim"
    }
end)
