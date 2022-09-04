-- neovim config
-- settings/nvim-cmp.lua

local kind_presets = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "ﰠ",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "塞",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "פּ",
    Event = "",
    Operator = "",
    TypeParameter = ""
}

-- begin setup
local cmp = require("cmp")
local luasnip = require("luasnip")
cmp.setup({
    -- enable completion kind items
    formatting = {
        fields = {
            "kind", "abbr", "menu"
        },
        format = function(_, vim_item)
            vim_item.kind = string.format("%s ", kind_presets[vim_item.kind])
            return vim_item
        end
    },

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
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
        ['<S-Tab>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
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
})
