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

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

-- begin setup
local cmp = require("cmp")
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

    -- key mappings
    mapping = {
        -- <Tab> (select next suggestion)
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif vim.fn["vsnip#available"](1) == 1 then
                feedkey("<Plug>(vsnip-expand-or-jump)", "")
            else
                fallback()
            end
        end, { "i", "s" }),

        -- <S-Tab> (select previous suggestion)
        ['<S-Tab>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                feedkey("<Plug>(vsnip-jump-prev)", "")
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
    },

    -- snippets
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },

    -- timeout
    performance = {
        fetching_timeout = 5000
    }
})
