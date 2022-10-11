local colors = {
    fg = "#cdd6f4", -- text
    bg = "#1e1e2e", -- base
    black = "#181825", -- mantle
    skyblue = "#89dceb", -- sky
    cyan = "#89b4fa", -- blue
    green = "#a6e3a1", -- green
    oceanblue = "#74c7ec", -- sapphire
    magenta = "#f5c2e7", -- pink
    orange = "#f2cdcd", -- flamingo
    red = "#f38ba8", -- red
    violet = "#cba6f7", -- mauve
    white = "#bac2de", -- subtext1
    yellow = "#f9e2af" -- yellow
}

local hls = {
    ["WhichKeyGroup"] = { fg = "#89B4FA" },
    ["WhichKeyFloat"] = { bg = "#11111B" },
    ["mkdCodeDelimiter"] = { bg = "#1E1E2E", fg = "#CDD6F4" },
    ["WhichKeyDesc"] = { fg = "#F5C2E7" },
    ["htmlH1"] = { fg = "#F5C2E7" },
    ["Visual"] = { bg = "#45475A" },
    ["Underlined"] = { underline = true },
    ["Typedef"] = { fg = "#F9E2AF" },
    ["Todo"] = { bg = "#F9E2AF", fg = "#1E1E2E" },
    ["CmpItemKindField"] = { fg = "#A6E3A1" },
    ["CmpItemKindEvent"] = { fg = "#89B4FA" },
    ["CmpItemKindEnumMember"] = { fg = "#F38BA8" },
    ["TelescopeSelectionCaret"] = { fg = "#F2CDCD" },
    ["TelescopeSelection"] = { bg = "#313244", fg = "#CDD6F4" },
    ["TelescopeMatching"] = { fg = "#89B4FA" },
    ["CmpItemKindConstant"] = { fg = "#FAB387" },
    ["Tag"] = { link = "Special" },
    ["CmpItemKindClass"] = { fg = "#F9E2AF" },
    ["TabLine"] = { bg = "#181825", fg = "#45475A" },
    ["TSWarning"] = { bg = "#F9E2AF", fg = "#1E1E2E" },
    ["TSVariableBuiltin"] = { fg = "#F38BA8" },
    ["TSVariable"] = { fg = "#CDD6F4" },
    ["IndentBlanklineContextChar"] = { fg = "#CDD6F4" },
    ["TSURI"] = { fg = "#F5E0DC", underline = true },
    ["TSTypeBuiltin"] = { fg = "#F9E2AF" },
    ["TSTextReference"] = { fg = "#B4BEFE" },
    ["TSStringRegex"] = { fg = "#FAB387" },
    ["WinBar"] = { fg = "#F5E0DC" },
    ["TSStringEscape"] = { fg = "#F5C2E7" },
    ["TSPunctSpecial"] = { fg = "#89DCEB" },
    ["TSPunctDelimiter"] = { fg = "#9399B2" },
    ["TSPunctBracket"] = { fg = "#9399B2" },
    ["TSProperty"] = { fg = "#94E2D5" },
    ["TSField"] = { fg = "#94E2D5" },
    ["TSOperator"] = { fg = "#89DCEB" },
    ["TSNote"] = { bg = "#89B4FA", fg = "#1E1E2E" },
    ["TSNamespace"] = { fg = "#89B4FA" },
    ["TSKeywordOperator"] = { fg = "#CBA6F7" },
    ["TSKeywordFunction"] = { fg = "#CBA6F7" },
    ["TSFuncMacro"] = { fg = "#94E2D5" },
    ["TSFuncBuiltin"] = { fg = "#FAB387" },
    ["TSDanger"] = { bg = "#F38BA8", fg = "#1E1E2E" },
    ["TSConstructor"] = { fg = "#74C7EC" },
    ["TSConstBuiltin"] = { fg = "#FAB387" },
    ["Conceal"] = { fg = "#7F849C" },
    ["Substitute"] = { bg = "#45475A", fg = "#F5C2E7" },
    ["Structure"] = { fg = "#F9E2AF" },
    ["StorageClass"] = { fg = "#F9E2AF" },
    ["SpellRare"] = { sp = "#A6E3A1", undercurl = true },
    ["SpellLocal"] = { sp = "#89B4FA", undercurl = true },
    ["SpellCap"] = { sp = "#F9E2AF", undercurl = true },
    ["SpellBad"] = { sp = "#F38BA8", undercurl = true },
    ["SpecialKey"] = { fg = "#CDD6F4" },
    ["SpecialComment"] = { link = "Special" },
    ["SpecialChar"] = { link = "Special" },
    ["SignColumnSB"] = { bg = "#11111B", fg = "#45475A" },
    ["Repeat"] = { fg = "#F38BA8" },
    ["QuickFixLine"] = { bg = "#45475A" },
    ["Question"] = { fg = "#89B4FA" },
    ["MoreMsg"] = { fg = "#89B4FA" },
    ["PreCondit"] = { link = "PreProc" },
    ["NvimTreeFolderName"] = { fg = "#89B4FA" },
    ["LeapMatch"] = { fg = "#b7efb2", nocombine = true, underline = true },
    ["PmenuThumb"] = { bg = "#6C7086" },
    ["LeapLabelPrimary"] = { bg = "#b7efb2", fg = "#1E1E2E", nocombine = true },
    ["LeapLabelSecondary"] = { bg = "#89DCEB", fg = "#1E1E2E", nocombine = true },
    ["NvimTreeRootFolder"] = { fg = "#89B4FA" },
    ["NotifyWARNTitle"] = { fg = "#F9E2AF" },
    ["TSTagAttribute"] = { fg = "#94E2D5" },
    ["NotifyWARNBorder"] = { fg = "#F9E2AF" },
    ["TSTag"] = { fg = "#CBA6F7" },
    ["NotifyTRACETitle"] = { fg = "#F5E0DC" },
    ["TSLiteral"] = { fg = "#94E2D5" },
    ["TSTitle"] = { fg = "#89B4FA" },
    ["NotifyTRACEBorder"] = { fg = "#F5E0DC" },
    ["NotifyINFOTitle"] = { fg = "#89B4FA" },
    ["NotifyINFOIcon"] = { fg = "#89B4FA" },
    ["NotifyINFOBorder"] = { fg = "#89B4FA" },
    ["LspReferenceWrite"] = { bg = "#45475A" },
    ["LspReferenceRead"] = { bg = "#45475A" },
    ["LspReferenceText"] = { bg = "#45475A" },
    ["NotifyDEBUGTitle"] = { fg = "#FAB387" },
    ["NotifyDEBUGIcon"] = { fg = "#FAB387" },
    ["NotifyDEBUGBorder"] = { fg = "#FAB387" },
    ["NvimTreeGitNew"] = { fg = "#89B4FA" },
    ["Delimiter"] = { link = "Special" },
    ["Debug"] = { link = "Special" },
    ["DashboardShortCut"] = { fg = "#F5C2E7" },
    ["DashboardHeader"] = { fg = "#89B4FA" },
    ["DashboardFooter"] = { fg = "#F9E2AF" },
    ["DashboardCenter"] = { fg = "#A6E3A1" },
    ["PmenuSel"] = { bg = "#45475A", fg = "#CDD6F4" },
    ["NormalFloat"] = { bg = "#181825", fg = "#CDD6F4" },
    ["CursorIM"] = { bg = "#CDD6F4", fg = "#1E1E2E" },
    ["CurSearch"] = { bg = "#F38BA8", fg = "#181825" },
    ["ColorColumn"] = { bg = "#313244" },
    ["CmpItemKindVariable"] = { fg = "#F2CDCD" },
    ["CmpItemKindValue"] = { fg = "#FAB387" },
    ["CmpItemKindUnit"] = { fg = "#A6E3A1" },
    ["Macro"] = { link = "PreProc" },
    ["Operator"] = { fg = "#89DCEB" },
    ["LspTroubleNormal"] = { bg = "#11111B", fg = "#CDD6F4" },
    ["Function"] = { fg = "#89B4FA" },
    ["Constant"] = { fg = "#FAB387" },
    ["CmpItemKindOperator"] = { fg = "#89B4FA" },
    ["Type"] = { fg = "#89B4FA" },
    ["CmpItemKindMethod"] = { fg = "#89B4FA" },
    ["Boolean"] = { fg = "#FAB387" },
    ["Number"] = { fg = "#FAB387" },
    ["NvimTreeEmptyFolderName"] = { fg = "#89B4FA" },
    ["NvimTreeOpenedFolderName"] = { fg = "#89B4FA" },
    ["NvimTreeFolderIcon"] = { fg = "#89B4FA" },
    ["Label"] = { fg = "#FAB387" },
    ["Italic"] = { italic = true },
    ["NvimTreeSymlink"] = { fg = "#F5C2E7" },
    ["NvimTreeOpenedFile"] = { fg = "#F5C2E7" },
    ["NvimTreeImageFile"] = { fg = "#CDD6F4" },
    ["GlyphPalette9"] = { fg = "#F38BA8" },
    ["NvimTreeSpecialFile"] = { fg = "#F2CDCD" },
    ["CmpItemKind"] = { fg = "#89B4FA" },
    ["GlyphPalette7"] = { fg = "#CDD6F4" },
    ["CmpItemAbbrDeprecated"] = { fg = "#6C7086", strikethrough = true },
    ["GlyphPalette6"] = { fg = "#94E2D5" },
    ["GlyphPalette4"] = { fg = "#89B4FA" },
    ["GlyphPalette3"] = { fg = "#F9E2AF" },
    ["GlyphPalette2"] = { fg = "#94E2D5" },
    ["TSException"] = { fg = "#CBA6F7" },
    ["TSKeywordReturn"] = { fg = "#CBA6F7" },
    ["TSKeyword"] = { fg = "#CBA6F7" },
    ["luaTSConstructor"] = { fg = "#B4BEFE" },
    ["TSRepeat"] = { fg = "#CBA6F7" },
    ["TSConditional"] = { fg = "#CBA6F7" },
    ["Folded"] = { bg = "#45475A", fg = "#89B4FA" },
    ["FoldColumn"] = { fg = "#6C7086" },
    ["TSMethod"] = { fg = "#89B4FA" },
    ["FloatBorder"] = { fg = "#89B4FA" },
    ["TSParameter"] = { fg = "#EBA0AC" },
    ["TSFunction"] = { fg = "#89B4FA" },
    ["TSFloat"] = { fg = "#FAB387" },
    ["TSBoolean"] = { fg = "#FAB387" },
    ["TSNumber"] = { fg = "#FAB387" },
    ["MiniStarterFooter"] = { fg = "#F9E2AF" },
    ["MiniStarterHeader"] = { fg = "#89B4FA" },
    ["TSConstMacro"] = { fg = "#CBA6F7" },
    ["MiniStarterItem"] = { fg = "#CDD6F4" },
    ["MiniStarterSection"] = { fg = "#F2CDCD" },
    ["MiniStarterItemPrefix"] = { fg = "#F5C2E7" },
    ["MiniTrailspace"] = { bg = "#F38BA8" },
    ["GitSignsAdd"] = { fg = "#A6E3A1" },
    ["Bold"] = { bold = true },
    ["CmpItemAbbrMatch"] = { fg = "#CDD6F4" },
    ["CmpItemAbbrMatchFuzzy"] = { fg = "#CDD6F4" },
    ["MiniStarterInactive"] = { fg = "#585B70" },
    ["MiniStarterQuery"] = { fg = "#A6E3A1" },
    ["MiniStarterCurrent"] = {},
    ["DiagnosticVirtualTextError"] = { bg = "NONE", fg = "#F38BA8" },
    ["LspSignatureActiveParameter"] = { fg = "#FAB387" },
    ["Include"] = { fg = "#F5C2E7" },
    ["DiagnosticVirtualTextInfo"] = { bg = "NONE", fg = "#89DCEB" },
    ["DiagnosticUnderlineHint"] = { sp = "#94E2D5", underline = true },
    ["DiagnosticUnderlineError"] = { sp = "#F38BA8", underline = true },
    ["DiagnosticUnderlineWarn"] = { sp = "#F9E2AF", underline = true },
    ["DiagnosticUnderlineInfo"] = { sp = "#89DCEB", underline = true },
    ["Character"] = { fg = "#94E2D5" },
    ["DiagnosticError"] = { bg = "NONE", fg = "#F38BA8" },
    ["Comment"] = { fg = "#585B70" },
    ["DiagnosticWarn"] = { bg = "NONE", fg = "#F9E2AF" },
    ["WarningMsg"] = { fg = "#F9E2AF" },
    ["DiagnosticInfo"] = { bg = "NONE", fg = "#89DCEB" },
    ["DiagnosticHint"] = { bg = "NONE", fg = "#94E2D5" },
    ["MiniStatuslineModeCommand"] = { bg = "#FAB387", fg = "#1E1E2E" },
    ["MiniStatuslineInactive"] = { bg = "#181825", fg = "#89B4FA" },
    ["MiniStatuslineFilename"] = { bg = "#181825", fg = "#CDD6F4" },
    ["MiniStatuslineFileinfo"] = { bg = "#45475A", fg = "#BAC2DE" },
    ["MiniStatuslineDevinfo"] = { bg = "#45475A", fg = "#BAC2DE" },
    ["MiniJump2dSpot"] = { bg = "#1E1E2E", fg = "#FAB387", underline = true },
    ["MiniJump"] = { bg = "#F5C2E7", fg = "#9399B2" },
    ["MiniIndentscopePrefix"] = { nocombine = true },
    ["MiniIndentscopeSymbol"] = { fg = "#CDD6F4" },
    ["WhichKeyBorder"] = { fg = "#89B4FA" },
    ["MiniCursorword"] = { underline = true },
    ["MiniCompletionActiveParameter"] = { underline = true },
    ["SignColumn"] = { fg = "#45475A" },
    ["NvimTreeNormal"] = { bg = "NONE", fg = "#CDD6F4" },
    ["CursorLine"] = { bg = "NONE" },
    ["VertSplit"] = { fg = "NONE" },
    ["StatusLine"] = { bg = "#181825", fg = "#CDD6F4" },
    ["StatusLineNC"] = { bg = "#181825", fg = "#45475A" },
    ["CursorColumn"] = { bg = "#181825" },
    ["NormalNC"] = { bg = "NONE", fg = "#CDD6F4" },
    ["MiniTestPass"] = { fg = "#A6E3A1" },
    ["NvimTreeStatuslineNc"] = { bg = "#181825", fg = "#181825" },
    ["MiniTestEmphasis"] = { bold = true },
    ["MiniTablineVisible"] = { bg = "#45475A", fg = "#BAC2DE" },
    ["MiniTablineTabpagesection"] = { bg = "#1E1E2E", fg = "#45475A" },
    ["MiniTablineModifiedVisible"] = { bg = "#BAC2DE", fg = "#45475A" },
    ["MiniTablineModifiedHidden"] = { bg = "#CDD6F4", fg = "NONE" },
    ["MiniTablineModifiedCurrent"] = { bg = "#CDD6F4", fg = "#1E1E2E" },
    ["MiniTablineHidden"] = { bg = "NONE", fg = "#CDD6F4" },
    ["MiniTablineFill"] = { bg = "NONE" },
    ["MiniTablineCurrent"] = { bg = "#1E1E2E", fg = "#CDD6F4" },
    ["yamlTSField"] = { fg = "#89B4FA" },
    ["MiniStatuslineModeVisual"] = { bg = "#CBA6F7", fg = "#1E1E2E" },
    ["MiniStatuslineModeReplace"] = { bg = "#F38BA8", fg = "#1E1E2E" },
    ["MiniStatuslineModeOther"] = { bg = "#94E2D5", fg = "#1E1E2E" },
    ["MiniStatuslineModeNormal"] = { bg = "#89B4FA", fg = "#181825" },
    ["MiniStatuslineModeInsert"] = { bg = "#A6E3A1", fg = "#1E1E2E" },
    ["tomlTSProperty"] = { fg = "#89B4FA" },
    ["diffRemoved"] = { fg = "#F38BA8" },
    ["diffChanged"] = { fg = "#89B4FA" },
    ["diffAdded"] = { fg = "#A6E3A1" },
    ["LspCodeLens"] = { fg = "#6C7086" },
    ["GitSignsChange"] = { fg = "#F9E2AF" },
    ["ModeMsg"] = { fg = "#CDD6F4" },
    ["Pmenu"] = { bg = "#313244", fg = "#9399B2" },
    ["GitSignsDelete"] = { fg = "#F38BA8" },
    ["EndOfBuffer"] = { fg = "#1E1E2E" },
    ["NonText"] = { fg = "#6C7086" },
    ["CmpItemKindStruct"] = { fg = "#89B4FA" },
    ["CmpItemKindReference"] = { fg = "#F38BA8" },
    ["MsgArea"] = { fg = "#CDD6F4" },
    ["TabLineFill"] = {},
    ["Title"] = { fg = "#89B4FA" },
    ["VisualNOS"] = { bg = "#45475A" },
    ["Whitespace"] = { fg = "#45475A" },
    ["ErrorMsg"] = { fg = "#F38BA8" },
    ["MsgSeparator"] = {},
    ["NormalSB"] = { bg = "#11111B", fg = "#CDD6F4" },
    ["IncSearch"] = { bg = "#7EC9D8", fg = "#181825" },
    ["illuminatedCurWord"] = { bg = "#45475A" },
    ["WildMenu"] = { bg = "#6C7086" },
    ["Special"] = { fg = "#F5C2E7" },
    ["Keyword"] = { fg = "#F5C2E7" },
    ["diffFile"] = { fg = "#89B4FA" },
    ["healthWarning"] = { fg = "#F9E2AF" },
    ["healthSuccess"] = { fg = "#94E2D5" },
    ["MatchParen"] = { fg = "#FAB387" },
    ["PmenuSbar"] = { bg = "#45475A" },
    ["debugPC"] = { bg = "#11111B" },
    ["debugBreakpoint"] = { bg = "#1E1E2E", fg = "#6C7086" },
    ["healthError"] = { fg = "#F38BA8" },
    ["CursorLineNr"] = { fg = "#B4BEFE" },
    ["Directory"] = { fg = "#89B4FA" },
    ["String"] = { fg = "#A6E3A1" },
    ["TSText"] = { fg = "#CDD6F4" },
    ["Normal"] = { bg = "NONE", fg = "#CDD6F4" },
    ["LineNr"] = { fg = "#45475A" },
    ["diffIndexLine"] = { fg = "#94E2D5" },
    ["TabLineSel"] = { bg = "#45475A", fg = "#A6E3A1" },
    ["diffLine"] = { fg = "#6C7086" },
    ["diffNewFile"] = { fg = "#FAB387" },
    ["diffOldFile"] = { fg = "#F9E2AF" },
    ["Search"] = { bg = "#3E5767", fg = "#CDD6F4" },
    ["illuminatedWord"] = { bg = "#45475A" },
    ["PreProc"] = { fg = "#F5C2E7" },
    ["Define"] = { link = "PreProc" },
    ["IndentBlanklineContextStart"] = { sp = "#CDD6F4", underline = true },
    ["NvimTreeVertSplit"] = { bg = "NONE", fg = "#1E1E2E" },
    ["DiffChange"] = { bg = "#25293C" },
    ["DiffAdd"] = { bg = "#364143" },
    ["DiffDelete"] = { bg = "#443244" },
    ["DiffText"] = { bg = "#313953" },
    ["Float"] = { fg = "#FAB387" },
    ["GlyphPalette1"] = { fg = "#F38BA8" },
    ["TelescopeBorder"] = { fg = "#89B4FA" },
    ["DiagnosticVirtualTextHint"] = { bg = "NONE", fg = "#94E2D5" },
    ["WhichKeySeperator"] = { fg = "#6C7086" },
    ["WhichKeyValue"] = { fg = "#6C7086" },
    ["htmlH2"] = { fg = "#89B4FA" },
    ["mkdCodeStart"] = { fg = "#F2CDCD" },
    ["mkdCodeEnd"] = { fg = "#F2CDCD" },
    ["TSConstant"] = { fg = "#FAB387" },
    ["Error"] = { fg = "#F38BA8" },
    ["Conditional"] = { fg = "#F38BA8" },
    ["NotifyERRORTitle"] = { fg = "#F38BA8" },
    ["NotifyERRORIcon"] = { fg = "#F38BA8" },
    ["Identifier"] = { fg = "#F2CDCD" },
    ["CmpItemKindConstructor"] = { fg = "#89B4FA" },
    ["Statement"] = { fg = "#CBA6F7" },
    ["TSEmphasis"] = { fg = "#EBA0AC" },
    ["TSStrong"] = { fg = "#EBA0AC" },
    ["MiniCursorwordCurrent"] = { underline = true },
    ["MiniSurround"] = { bg = "#F5C2E7", fg = "#45475A" },
    ["cppTSProperty"] = { fg = "#F5E0DC" },
    ["LspTroubleCount"] = { bg = "#45475A", fg = "#F5C2E7" },
    ["CmpItemKindProperty"] = { fg = "#A6E3A1" },
    ["CmpItemKindModule"] = { fg = "#89B4FA" },
    ["CmpItemKindKeyword"] = { fg = "#F38BA8" },
    ["CmpItemKindInterface"] = { fg = "#F9E2AF" },
    ["CmpItemKindFunction"] = { fg = "#89B4FA" },
    ["DiagnosticVirtualTextWarn"] = { bg = "NONE", fg = "#F9E2AF" },
    ["MiniStarterItemBullet"] = { fg = "#89B4FA" },
    ["NvimTreeGitDirty"] = { fg = "#F9E2AF" },
    ["CmpItemKindFile"] = { fg = "#89B4FA" },
    ["CmpItemMenu"] = { fg = "#CDD6F4" },
    ["NotifyTRACEIcon"] = { fg = "#F5E0DC" },
    ["NotifyWARNIcon"] = { fg = "#F9E2AF" },
    ["CmpItemKindCopilot"] = { fg = "#94E2D5" },
    ["CmpItemKindFolder"] = { fg = "#89B4FA" },
    ["tsxTSTagAttribute"] = { fg = "#CBA6F7" },
    ["NvimTreeGitDeleted"] = { fg = "#F38BA8" },
    ["CmpItemKindText"] = { fg = "#94E2D5" },
    ["typescriptTSConstructor"] = { fg = "#B4BEFE" },
    ["tsxTSConstructor"] = { fg = "#B4BEFE" },
    ["CmpItemKindColor"] = { fg = "#F38BA8" },
    ["TSTagDelimiter"] = { fg = "#89DCEB" },
    ["jsonTSLabel"] = { fg = "#89B4FA" },
    ["TSString"] = { fg = "#A6E3A1" },
    ["MiniTestFail"] = { fg = "#F38BA8" },
    ["CmpItemKindEnum"] = { fg = "#A6E3A1" },
    ["NotifyERRORBorder"] = { fg = "#F38BA8" },
    ["TSLabel"] = { fg = "#74C7EC" },
    ["TSType"] = { fg = "#F9E2AF" },
    ["TSInclude"] = { fg = "#CBA6F7" },
    ["CmpItemAbbr"] = { fg = "#9399B2" },
    ["NvimTreeIndentMarker"] = { fg = "#6C7086" },
    ["markdownH6"] = { fg = "#94E2D5" },
    ["markdownH5"] = { fg = "#F5C2E7" },
    ["markdownH4"] = { fg = "#F9E2AF" },
    ["markdownH3"] = { fg = "#A6E3A1" },
    ["markdownH2"] = { fg = "#CBA6F7" },
    ["markdownH1"] = { fg = "#B4BEFE" },
    ["markdownLinkText"] = { fg = "#89B4FA", underline = true },
    ["markdownCodeBlock"] = { fg = "#F2CDCD" },
    ["markdownCode"] = { fg = "#F2CDCD" },
    ["markdownHeadingDelimiter"] = { fg = "#FAB387" },
    ["CmpItemKindSnippet"] = { fg = "#CBA6F7" },
    ["WhichKey"] = { fg = "#F2CDCD" },
    ["LspTroubleText"] = { fg = "#A6E3A1" },
    ["CmpItemKindTypeParameter"] = { fg = "#89B4FA" },
    ["IndentBlanklineChar"] = { fg = "#313244" },
    ["qfLineNr"] = { fg = "#F9E2AF" },
    ["qfFileName"] = { fg = "#89B4FA" },
    ["lCursor"] = { bg = "#CDD6F4", fg = "#1E1E2E" },
    ["Cursor"] = { bg = "#CDD6F4", fg = "#1E1E2E" },
    ["LspDiagnosticsUnderlineHint"] = { sp = "#94E2D5", underline = true },
    ["LspDiagnosticsUnderlineInformation"] = { sp = "#89DCEB", underline = true },
    ["LspDiagnosticsUnderlineWarning"] = { sp = "#F9E2AF", underline = true },
    ["LspDiagnosticsUnderlineError"] = { sp = "#F38BA8", underline = true },
    ["LspDiagnosticsVirtualTextHint"] = { fg = "#94E2D5" },
    ["LspDiagnosticsVirtualTextInformation"] = { fg = "#89DCEB" },
    ["LspDiagnosticsVirtualTextWarning"] = { fg = "#F9E2AF" },
    ["LspDiagnosticsVirtualTextError"] = { fg = "#F38BA8" },
    ["LspDiagnosticsHint"] = { fg = "#94E2D5" },
    ["LspDiagnosticsInformation"] = { fg = "#89DCEB" },
    ["LspDiagnosticsWarning"] = { fg = "#F9E2AF" },
    ["LspDiagnosticsError"] = { fg = "#F38BA8" },
    ["LspDiagnosticsDefaultHint"] = { fg = "#94E2D5" },
    ["LspDiagnosticsDefaultInformation"] = { fg = "#89DCEB" },
    ["LspDiagnosticsDefaultWarning"] = { fg = "#F9E2AF" },
    ["LspDiagnosticsDefaultError"] = { fg = "#F38BA8" },
}

return {
    colors = colors,
    hls = hls
}
