-- neovim config
-- settings/nvim-cmp.lualine

-- helper functions
local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local luasnip = require("luasnip")

-- begin setup
local cmp = require("cmp")
cmp.setup({
    -- round documentation window border
    documentation = {
        border = "rounded"
    },

    -- enable completion kind items
    formatting = {
        fields = {
            "kind", "abbr", "menu"
        },
        format = require("helpers/cmp_icons")
    },

    -- key mappings
    mapping = {
        -- <Tab> (select next suggestion)
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),

        -- <S-Tab> (select previous suggestion)
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),

        -- <CR> (confirm completion)
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),

        -- <M-q> (close completion menu)
        ['<M-q>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.close()
            end
        end, { "i", "s" })
    },

    -- completion sources
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" }
    },

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    }
})
