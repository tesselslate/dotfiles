-- neovim config
-- settings/telescope.lua

local telescope = require("telescope")

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-x>"] = require("telescope.actions").close
            }
        }
    }
})
