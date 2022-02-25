-- neovim config
-- colors/tokyonight_storm.lua
--
-- based off of https://github.com/folke/tokyonight.nvim

local c = require("theme.base.tokyonight")
local config = require("theme.config")
local util = require("theme.util")

return {
    -- ------------------------
    -- vim highlights
    -- ------------------------

    Comment = { fg = c.comment, style = config.commentStyle },
    ColorColumn = { bg = c.black },
    Conceal = { fg = c.dark5 },
    Cursor = { fg = c.bg, bg = c.fg },
    lCursor = { fg = c.bg, bg = c.fg },
    CursorIM = { fg = c.bg, bg = c.fg },
    CursorColumn = { bg = c.bg_highlight },
    CursorLine = { bg = c.bg_highlight },
    Directory = { fg = c.blue },
    DiffAdd = { bg = c.diff.add },
    DiffChange = { bg = c.diff.change },
    DiffDelete = { bg = c.diff.delete },
    DiffText = { bg = c.diff.text },
    EndOfBuffer = { fg = c.bg },
    ErrorMsg = { fg = c.error },
    VertSplit = { fg = c.border },
    Folded = { fg = c.blue, bg = c.fg_gutter },
    FoldColumn = { bg = c.bg, fg = c.comment },
    SignColumn = { bg = config.transparent and c.none or c.bg, fg = c.fg_gutter },
    SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter },
    Substitute = { bg = c.red, fg = c.black },
    LineNr = { fg = c.dark5 },
    CursorLineNr = { fg = c.fg_dark },
    MatchParen = { fg = c.orange, style = "bold" },
    ModeMsg = { fg = c.fg_dark, style = "bold" },
    MsgArea = { fg = c.fg_dark },
    MoreMsg = { fg = c.blue },
    NonText = { fg = c.dark3 },
    Normal = { fg = c.fg, bg = config.transparent and c.none or c.bg },
    NormalNC = { fg = c.fg, bg = config.transparent and c.none or c.bg },
    NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NormalFloat = { fg = c.fg, bg = c.bg_float },
    FloatBorder = { fg = c.border_highlight, bg = c.bg_float },
    Pmenu = { bg = c.bg_popup, fg = c.fg },
    PmenuSel = { bg = util.darken(c.fg_gutter, 0.8) },
    PmenuSbar = { bg = util.lighten(c.bg_popup, 0.95) },
    PmenuThumb = { bg = c.fg_gutter },
    Question = { fg = c.blue },
    QuickFixLine = { bg = c.bg_visual, style = "bold" },
    Search = { bg = c.bg_search, fg = c.fg },
    IncSearch = { bg = c.orange, fg = c.black },
    SpecialKey = { fg = c.dark3 },
    SpellBad = { sp = c.error, style = "undercurl" },
    SpellCap = { sp = c.warning, style = "undercurl" },
    SpellLocal = { sp = c.info, style = "undercurl" },
    SpellRare = { sp = c.hint, style = "undercurl" },
    StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline },
    StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline },
    TabLine = { bg = c.bg_statusline, fg = c.fg_gutter },
    TabLineFill = { bg = c.black },
    TabLineSel = { fg = c.black, bg = c.blue },
    Title = { fg = c.blue, style = "bold" },
    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    WarningMsg = { fg = c.warning },
    Whitespace = { fg = c.fg_gutter },
    WildMenu = { bg = c.bg_visual },

    -- ------------------------
    -- syntax highlights
    -- ------------------------

    Constant = { fg = c.orange },
    String = { fg = c.green },
    Character = { fg = c.green },
    Identifier = { fg = c.magenta, style = config.variableStyle },
    Function = { fg = c.blue, style = config.functionStyle },
    Statement = { fg = c.magenta },
    Operator = { fg = c.blue5 },
    Keyword = { fg = c.cyan, style = config.keywordStyle },
    PreProc = { fg = c.cyan },
    Type = { fg = c.blue1 },
    Special = { fg = c.blue1 },

    Underlined = { style = "underline" },
    Bold = { style = "bold" },
    Italic = { style = "italic" },

    Error = { fg = c.error },
    Todo = { bg = c.yellow, fg = c.bg },

    qfLineNr = { fg = c.dark5 },
    qfFileName = { fg = c.blue },

    -- ------------------------
    -- LSP highlights
    -- ------------------------

    LspReferenceText = { bg = c.fg_gutter },
    LspReferenceRead = { bg = c.fg_gutter },
    LspReferenceWrite = { bg = c.fg_gutter },

    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },

    DiagnosticVirtualTextError = { bg = util.darken(c.error, 0.1), fg = c.error },
    DiagnosticVirtualTextWarn = { bg = util.darken(c.warning, 0.1), fg = c.warning },
    DiagnosticVirtualTextInfo = { bg = util.darken(c.info, 0.1), fg = c.info },
    DiagnosticVirtualTextHint = { bg = util.darken(c.hint, 0.1), fg = c.hint },

    DiagnosticUnderlineError = { style = "undercurl", sp = c.error },
    DiagnosticUnderlineWarn = { style = "undercurl", sp = c.warning },
    DiagnosticUnderlineInfo = { style = "undercurl", sp = c.info },
    DiagnosticUnderlineHint = { style = "undercurl", sp = c.hint },

    LspSignatureActiveParameter = { fg = c.orange },
    LspCodeLens = { fg = c.comment },

    -- ------------------------
    -- treesitter highlights
    -- ------------------------

    TSNote = { fg = c.bg, bg = c.info },
    TSWarning = { fg = c.bg, bg = c.warning },
    TSDanger = { fg = c.bg, bg = c.error },
    TSConstructor = { fg = c.magenta },
    TSField = { fg = c.green1 },
    TSKeyword = { fg = c.purple, style = config.keywordStyle },
    TSKeywordFunction = { fg = c.magenta, style = config.functionStyle },
    TSLabel = { fg = c.blue },
    TSOperator = { fg = c.blue5 },
    TSParameter = { fg = c.yellow },
    TSProperty = { fg = c.green1 },
    TSPunctDelimiter = { fg = c.blue5 },
    TSPunctBracket = { fg = c.fg_dark },
    TSPunctSpecial = { fg = c.blue5 },
    TSStringRegex = { fg = c.blue6 },
    TSStringEscape = { fg = c.magenta },
    TSVariable = { style = config.variableStyle },
    TSVariableBuiltin = { fg = c.red },
    TSTextReference = { fg = c.teal },

    -- ------------------------
    -- plugins
    -- ------------------------

    -- gitsigns
    GitSignsAdd = { fg = c.gitSigns.add },
    GitSignsChange = { fg = c.gitSigns.change },
    GitSignsDelete = { fg = c.gitSigns.delete },

    -- telescope
    TelescopeBorder = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },

    -- nvim-tree
    NvimTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeRootFolder = { fg = c.blue, style = "bold" },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeSpecialFile = { fg = c.purple, style = "underline" },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeImageFile = { fg = c.fg_sidebar },
    NvimTreeSymlink = { fg = c.blue },

    -- whichkey
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.magenta },
    WhichKeySeperator = { fg = c.comment },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyValue = { fg = c.dark5 },

    -- lightspeed
    LightspeedGreyWash = { fg = c.dark3 },
    LightspeedLabel = { fg = c.magenta2, style = "bold,underline" },
    LightspeedLabelDistant = { fg = c.green1, style = "bold,underline" },
    LightspeedLabelDistantOverlapped = { fg = c.green2, style = "underline" },
    LightspeedLabelOverlapped = { fg = c.magenta2, style = "underline" },
    LightspeedMaskedChar = { fg = c.orange },
    LightspeedOneCharMatch = { bg = c.magenta2, fg = c.fg, style = "bold" },
    LightspeedPendingOpArea = { bg = c.magenta2, fg = c.fg },
    LightspeedShortcut = { bg = c.magenta2, fg = c.fg, style = "bold,underline" },
    LightspeedUnlabeledMatch = { fg = c.blue2, style = "bold" },

    -- cmp
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },

    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.fg_gutter, bg = c.none, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = c.blue1, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.blue1, bg = c.none },

    CmpItemKindDefault = { fg = c.fg_dark, bg = c.none },
    CmpItemMenu = { fg = c.comment, bg = c.none },

    CmpItemKindKeyword = { fg = c.cyan, bg = c.none },

    CmpItemKindVariable = { fg = c.magenta, bg = c.none },
    CmpItemKindConstant = { fg = c.magenta, bg = c.none },
    CmpItemKindReference = { fg = c.magenta, bg = c.none },
    CmpItemKindValue = { fg = c.magenta, bg = c.none },

    CmpItemKindFunction = { fg = c.blue, bg = c.none },
    CmpItemKindMethod = { fg = c.blue, bg = c.none },
    CmpItemKindConstructor = { fg = c.blue, bg = c.none },

    CmpItemKindClass = { fg = c.orange, bg = c.none },
    CmpItemKindInterface = { fg = c.orange, bg = c.none },
    CmpItemKindStruct = { fg = c.orange, bg = c.none },
    CmpItemKindEvent = { fg = c.orange, bg = c.none },
    CmpItemKindEnum = { fg = c.orange, bg = c.none },
    CmpItemKindUnit = { fg = c.orange, bg = c.none },

    CmpItemKindModule = { fg = c.yellow, bg = c.none },

    CmpItemKindProperty = { fg = c.green1, bg = c.none },
    CmpItemKindField = { fg = c.green1, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.green1, bg = c.none },
    CmpItemKindEnumMember = { fg = c.green1, bg = c.none },
    CmpItemKindOperator = { fg = c.green1, bg = c.none },
    CmpItemKindSnippet = { fg = c.dark5, bg = c.none }
}
