local colors = {
    fg = "#dcd7ba", -- text
    bg = "#1f1f28", -- base
    black = "#16161d", -- mantle
    skyblue = "#7fb4ca", -- sky
    cyan = "#739cd8", -- blue
    green = "#76946a", -- green
    oceanblue = "#7aa89f", -- sapphire
    magenta = "#d27e99", -- pink
    orange = "#ff9e3b", -- flamingo
    red = "#c34043", -- red
    violet = "#957fb8", -- mauve
    white = "#c8c093", -- subtext1
    yellow = "#dca561" -- yellow
}

local hls = {
    ["CmpItemAbbrDeprecated"] = { fg = "#727169", strikethrough = true },
    ["CmpItemKindTypeParameter"] = { link = "Identifier" },
    ["CmpItemKindKeyword"] = { link = "TSKeyword" },
    ["CmpItemKindFolder"] = { link = "Directory" },
    ["CmpItemKindFile"] = { link = "Directory" },
    ["CmpItemKindModule"] = { link = "TSInclude" },
    ["CmpItemKindText"] = { link = "TSText" },
    ["CmpItemKindSnippet"] = { fg = "#7FB4CA" },
    ["CmpItemKindEnum"] = { link = "Identifier" },
    ["CmpItemKindField"] = { link = "TSField" },
    ["CmpItemKindProperty"] = { link = "TSProperty" },
    ["CmpItemKindStruct"] = { link = "Type" },
    ["CmpItemKindInterface"] = { link = "Type" },
    ["CmpItemKindClass"] = { link = "Type" },
    ["CmpItemKindConstructor"] = { link = "TSConstructor" },
    ["DiffDelete"] = { bg = "#43242B", fg = "#C34043" },
    ["CmpItemKindFunction"] = { link = "Function" },
    ["CmpItemKindVariable"] = { fg = "#C8C093" },
    ["CmpCompletionSbar"] = { link = "PmenuSbar" },
    ["PmenuSbar"] = { link = "Pmenu" },
    ["CmpCompletionThumb"] = { link = "PmenuThumb" },
    ["PmenuThumb"] = { bg = "#2D4F67" },
    ["CmpCompletionBorder"] = { bg = "#223249", fg = "#2D4F67" },
    ["NonText"] = { fg = "#54546D" },
    ["CmpCompletion"] = { link = "Pmenu" },
    ["CmpDocumentationBorder"] = { link = "FloatBorder" },
    ["CmpDocumentation"] = { link = "NormalFloat" },
    ["healthWarning"] = { fg = "#FF9E3B" },
    ["DiffAdd"] = { bg = "#2B3328" },
    ["healthError"] = { fg = "#E82424" },
    ["FloatermBorder"] = { bg = "#1F1F28", fg = "#54546D" },
    ["DiffChange"] = { bg = "#252535" },
    ["TSProperty"] = { link = "Identifier" },
    ["DashboardHeader"] = { fg = "#C34043" },
    ["Title"] = { bold = true, fg = "#7E9CD8" },
    ["NvimTreeWinSeparator"] = { link = "WinSeparator" },
    ["TSDanger"] = { link = "WarningMsg" },
    ["TSWarning"] = { link = "Todo" },
    ["Todo"] = { bg = "#658594", bold = true, fg = "#223249" },
    ["TelescopeBorder"] = { bg = "#1F1F28", fg = "#54546D" },
    ["diffDeleted"] = { fg = "#C34043" },
    ["NeogitDiffContextHighlight"] = { bg = "#252535" },
    ["diffChanged"] = { fg = "#DCA561" },
    ["Underlined"] = { fg = "#7FB4CA", underline = true },
    ["NeogitDiffDelete"] = { bg = "#43242B", fg = "#C34043" },
    ["diffNewFile"] = { fg = "#76946A" },
    ["diffAdded"] = { fg = "#76946A" },
    ["debugBreakpoint"] = { fg = "#7FB4CA" },
    ["debugPC"] = { bg = "#43242B" },
    ["markdownEscape"] = { fg = "NONE" },
    ["markdownCodeBlock"] = { fg = "#98BB6C" },
    ["markdownCode"] = { fg = "#98BB6C" },
    ["qfFileName"] = { link = "Directory" },
    ["qfLineNr"] = { link = "lineNr" },
    ["Ignore"] = { link = "NonText" },
    ["Italic"] = { italic = true },
    ["LspReferenceWrite"] = { link = "LspReferenceText" },
    ["Whitespace"] = { fg = "#54546D" },
    ["VisualNOS"] = { link = "Visual" },
    ["Visual"] = { bg = "#223249" },
    ["TabLineFill"] = { bg = "#1F1F28" },
    ["TabLine"] = { bg = "#16161D", fg = "#938AA9" },
    ["WinbarNC"] = { bg = "NONE", fg = "#C8C093" },
    ["Winbar"] = { bg = "NONE", fg = "#C8C093" },
    ["SpellRare"] = { sp = "#FF9E3B", undercurl = true },
    ["SpellLocal"] = { sp = "#FF9E3B", undercurl = true },
    ["SpellCap"] = { sp = "#FF9E3B", undercurl = true },
    ["SpellBad"] = { sp = "#E82424", undercurl = true },
    ["SpecialKey"] = { link = "NonText" },
    ["CurSearch"] = { link = "Search" },
    ["QuickFixLine"] = { link = "CursorLine" },
    ["TSException"] = { fg = "#FF5D62" },
    ["MoreMsg"] = { bg = "#1F1F28", fg = "#658594" },
    ["TSKeywordReturn"] = { fg = "#FF5D62" },
    ["TSKeyword"] = { link = "Keyword" },
    ["TSKeywordOperator"] = { bold = true, fg = "#C0A36E" },
    ["TSOperator"] = { link = "Operator" },
    ["TSLabel"] = { link = "Label" },
    ["MatchParen"] = { bold = true, fg = "#FF9E3B" },
    ["Substitute"] = { bg = "#C34043", fg = "#DCD7BA" },
    ["LspSignatureActiveParameter"] = { fg = "#FF9E3B" },
    ["FoldColumn"] = { fg = "#54546D" },
    ["Folded"] = { bg = "#2A2A37", fg = "#938AA9" },
    ["TSAttribute"] = { link = "Constant" },
    ["Bold"] = { bold = true },
    ["TSConstructor"] = { fg = "#957FB8" },
    ["TSField"] = { link = "Identifier" },
    ["Conceal"] = { bold = true, fg = "#938AA9" },
    ["TSMethod"] = { link = "Function" },
    ["Pmenu"] = { bg = "#223249", fg = "#DCD7BA" },
    ["TSParameter"] = { link = "Identifier" },
    ["Character"] = { link = "String" },
    ["Float"] = { link = "Number" },
    ["GitSignsChange"] = { link = "diffChanged" },
    ["GitSignsDeleteLn"] = { bg = "#43242B" },
    ["TSStringEscape"] = { bold = true, fg = "#C0A36E" },
    ["ErrorMsg"] = { fg = "#E82424" },
    ["Type"] = { fg = "#7AA89F" },
    ["Comment"] = { fg = "#727169" },
    ["GitSignsAdd"] = { link = "diffAdded" },
    ["TSPunctSpecial"] = { fg = "#9CABCA" },
    ["TSPunctBracket"] = { fg = "#9CABCA" },
    ["TSPunctDelimiter"] = { fg = "#9CABCA" },
    ["CmpItemAbbrMatchFuzzy"] = { link = "CmpItemAbbrMatch" },
    ["DiagnosticVirtualTextHint"] = { link = "DiagnosticHint" },
    ["DiagnosticVirtualTextError"] = { link = "DiagnosticError" },
    ["DiagnosticVirtualTextWarn"] = { link = "DiagnosticWarn" },
    ["DiagnosticVirtualTextInfo"] = { link = "DiagnosticInfo" },
    ["DiagnosticUnderlineHint"] = { sp = "#6A9589", undercurl = true },
    ["StatusLineNC"] = { bg = "#16161D", fg = "#727169" },
    ["StatusLine"] = { bg = "#16161D", fg = "#C8C093" },
    ["DiagnosticUnderlineInfo"] = { sp = "#658594", undercurl = true },
    ["DiagnosticSignHint"] = { link = "DiagnosticHint" },
    ["DiagnosticSignError"] = { link = "DiagnosticError" },
    ["CursorColumn"] = { link = "CursorLine" },
    ["WinSeparator"] = { bg = "NONE", fg = "#0f0f15" },
    ["VertSplit"] = { link = "WinSeparator" },
    ["CursorLine"] = { bg = "#363646" },
    ["DiagnosticError"] = { fg = "#E82424" },
    ["PmenuSel"] = { bg = "#2D4F67", fg = "#DCD7BA" },
    ["DiagnosticWarn"] = { fg = "#FF9E3B" },
    ["DiagnosticInfo"] = { fg = "#658594" },
    ["DiagnosticHint"] = { fg = "#6A9589" },
    ["TSVariable"] = { fg = "#DCD7BA" },
    ["EndOfBuffer"] = { fg = "#1F1F28" },
    ["NormalNC"] = { link = "Normal" },
    ["Special"] = { fg = "#7FB4CA" },
    ["IncSearch"] = { bg = "#FF9E3B", fg = "#223249" },
    ["Number"] = { fg = "#D27E99" },
    ["String"] = { fg = "#98BB6C" },
    ["LspCodeLens"] = { fg = "#727169" },
    ["Method"] = { link = "Function" },
    ["Function"] = { fg = "#7E9CD8" },
    ["ColorColumn"] = { bg = "#2A2A37" },
    ["Boolean"] = { bold = true, fg = "#FFA066" },
    ["lCursor"] = { link = "Cursor" },
    ["Cursor"] = { bg = "#DCD7BA", fg = "#1F1F28" },
    ["ModeMsg"] = { bold = true, fg = "#FF9E3B" },
    ["IndentBlanklineChar"] = { fg = "#54546D" },
    ["Operator"] = { fg = "#C0A36E" },
    ["CmpItemKindCopilot"] = { link = "String" },
    ["Struct"] = { link = "Type" },
    ["Constant"] = { fg = "#FFA066" },
    ["Question"] = { link = "MoreMsg" },
    ["SignColumnSB"] = { link = "SignColumn" },
    ["DiagnosticUnderlineError"] = { sp = "#E82424", undercurl = true },
    ["CmpItemKindOperator"] = { link = "Operator" },
    ["CmpItemKindConstant"] = { link = "Constant" },
    ["CmpItemKindMethod"] = { link = "Function" },
    ["NormalSB"] = { link = "Normal" },
    ["CmpItemKindDefault"] = { fg = "#717C7C" },
    ["CmpItemAbbrMatch"] = { fg = "#7E9CD8" },
    ["DiagnosticUnderlineWarn"] = { sp = "#FF9E3B", undercurl = true },
    ["CmpCompletionSel"] = { bg = "#2D4F67", fg = "NONE" },
    ["healthSuccess"] = { fg = "#98BB6C" },
    ["DashboardFooter"] = { fg = "#7E9CD8" },
    ["DashboardCenter"] = { fg = "#E6C384" },
    ["DashboardShortCut"] = { fg = "#7FB4CA" },
    ["Error"] = { fg = "#E82424" },
    ["NvimTreeGitStaged"] = { fg = "#76946A" },
    ["DiagnosticSignWarn"] = { link = "DiagnosticWarn" },
    ["Keyword"] = { fg = "#957FB8" },
    ["NvimTreeFolderName"] = { link = "Directory" },
    ["WarningMsg"] = { fg = "#FF9E3B" },
    ["PreProc"] = { fg = "#FFA066" },
    ["LspReferenceRead"] = { link = "LspReferenceText" },
    ["CursorLineNr"] = { bold = true, fg = "#FF9E3B" },
    ["Directory"] = { fg = "#7E9CD8" },
    ["DiagnosticSignInfo"] = { link = "DiagnosticInfo" },
    ["NvimTreeGitDeleted"] = { fg = "#C34043" },
    ["LineNr"] = { fg = "#54546D" },
    ["NvimTreeGitNew"] = { fg = "#76946A" },
    ["TabLineSel"] = { bg = "#363646", fg = "#C8C093" },
    ["NvimTreeGitDirty"] = { fg = "#DCA561" },
    ["NvimTreeRootFolder"] = { bold = true, fg = "#E6C384" },
    ["NvimTreeNormalNC"] = { link = "NormalNC" },
    ["Search"] = { bg = "#2D4F67", fg = "#DCD7BA" },
    ["NvimTreeNormal"] = { link = "Normal" },
    ["MsgArea"] = { fg = "#C8C093" },
    ["TelescopeResultsStruct"] = { link = "TSType" },
    ["TelescopeResultsClass"] = { link = "TSType" },
    ["GitSignsDelete"] = { link = "diffDeleted" },
    ["NeogitHunkHeader"] = { fg = "#E6C384" },
    ["NeogitDiffAdd"] = { bg = "#2B3328", fg = "#76946A" },
    ["diffOldFile"] = { fg = "#C34043" },
    ["diffRemoved"] = { fg = "#C34043" },
    ["TSVariableBuiltin"] = { fg = "#E46876" },
    ["TSStringRegex"] = { fg = "#C0A36E" },
    ["SignColumn"] = { fg = "#54546D" },
    ["DiffText"] = { bg = "#49443C" },
    ["FloatBorder"] = { bg = "#16161D", fg = "#54546D" },
    ["WildMenu"] = { link = "Pmenu" },
    ["CursorIM"] = { link = "Cursor" },
    ["Statement"] = { fg = "#957FB8" },
    ["Exception"] = { fg = "#E46876" },
    ["NvimTreeSymlink"] = { link = "Type" },
    ["NvimTreeOpenedFile"] = { fg = "#7FB4CA", italic = true },
    ["LspReferenceText"] = { bg = "#49443C" },
    ["NvimTreeImageFile"] = { fg = "#E46876" },
    ["NvimTreeExecFile"] = { bold = true, fg = "#98BB6C" },
    ["NvimTreeSpecialFile"] = { fg = "#7FB4CA" },
    ["NormalFloat"] = { bg = "#16161D", fg = "#C8C093" },
    ["Identifier"] = { fg = "#E6C384" },
    ["IndentBlanklineContextStart"] = { sp = "#938AA9", underline = true },
    ["IndentBlanklineContextChar"] = { fg = "#938AA9" },
    ["IndentBlanklineSpaceCharBlankline"] = { fg = "#54546D" },
    ["IndentBlanklineSpaceChar"] = { fg = "#54546D" },
    ["TelescopeResultsVariable"] = { link = "TSVariable" },
    ["CmpItemMenu"] = { fg = "#727169" },
    ["CmpItemKindValue"] = { link = "String" },
    ["CmpItemKindEnumMember"] = { link = "TSField" },
    ["CmpItemKindReference"] = { link = "TSParameterReference" },
    ["CmpItemAbbr"] = { fg = "#DCD7BA" },
}

return {
    colors = colors,
    hls = hls
}