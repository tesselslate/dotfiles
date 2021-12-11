-- neovim config
-- helpers/cmp_icons.lua
--
-- originally from lspkind plugin

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

function format_entry(_, vim_item)
    vim_item.kind = string.format("%s ", kind_presets[vim_item.kind])
    return vim_item
end

return format_entry
