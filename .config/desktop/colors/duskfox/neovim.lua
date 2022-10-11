local colors = {
    fg = "#eae8ff",
    bg = "#191726",
    black = "#393552",
    skyblue = "#65b1cd",
    cyan = "#9ccfd8",
    green = "#a3be8c",
    oceanblue = "#4a869c",
    magenta = "#c4a7e7",
    orange = "#ea9a97",
    red = "#eb6f92",
    violet = "#eb98c3",
    white = "#e0def4",
    yellow = "#f6c177"
}

local hls = {
    ["AerialGuide"] = { fg = "#4b4673" },
    ["AerialLine"] = { link = "Search" },
    ["Bold"] = { bold = true },
    ["Boolean"] = { link = "Number" },
    ["BufferCurrent"] = { bg = "#6e6a86", fg = "#e0def4" },
    ["BufferCurrentIndex"] = { bg = "#6e6a86", fg = "#569fba" },
    ["BufferCurrentMod"] = { bg = "#6e6a86", fg = "#f6c177" },
    ["BufferCurrentSign"] = { bg = "#6e6a86", fg = "#569fba" },
    ["BufferCurrentTarget"] = { bg = "#6e6a86", fg = "#eb6f92" },
    ["BufferInactive"] = { bg = "#191726", fg = "#817c9c" },
    ["BufferInactiveIndex"] = { bg = "#191726", fg = "#817c9c" },
    ["BufferInactiveMod"] = { bg = "#191726", fg = "#433940" },
    ["BufferInactiveSign"] = { bg = "#191726", fg = "#373354" },
    ["BufferInactiveTarget"] = { bg = "#191726", fg = "#eb6f92" },
    ["BufferTabpage"] = { bg = "#191726", fg = "#373354" },
    ["BufferTabpages"] = { bg = "#191726" },
    ["BufferVisible"] = { bg = "#191726", fg = "#e0def4" },
    ["BufferVisibleIndex"] = { bg = "#191726", fg = "#569fba" },
    ["BufferVisibleMod"] = { bg = "#191726", fg = "#f6c177" },
    ["BufferVisibleSign"] = { bg = "#191726", fg = "#569fba" },
    ["BufferVisibleTarget"] = { bg = "#191726", fg = "#eb6f92" },
    ["Character"] = { link = "String" },
    ["CmpDocumentation"] = { bg = "#191726", fg = "#e0def4" },
    ["CmpDocumentationBorder"] = { bg = "#191726", fg = "#433c59" },
    ["CmpItemAbbr"] = { fg = "#e0def4" },
    ["CmpItemAbbrDeprecated"] = { fg = "#6e6a86", strikethrough = true },
    ["CmpItemAbbrMatch"] = { fg = "#65b1cd" },
    ["CmpItemAbbrMatchFuzzy"] = { fg = "#65b1cd" },
    ["CmpItemKindClass"] = { link = "Type" },
    ["CmpItemKindConstant"] = { link = "TSConstant" },
    ["CmpItemKindConstructor"] = { link = "Function" },
    ["CmpItemKindDefault"] = { fg = "#cdcbe0" },
    ["CmpItemKindEnum"] = { link = "Constant" },
    ["CmpItemKindEnumMember"] = { link = "TSField" },
    ["CmpItemKindEvent"] = { link = "Constant" },
    ["CmpItemKindField"] = { link = "TSField" },
    ["CmpItemKindFunction"] = { link = "Function" },
    ["CmpItemKindInterface"] = { link = "Constant" },
    ["CmpItemKindKeyword"] = { link = "Identifier" },
    ["CmpItemKindMethod"] = { link = "Function" },
    ["CmpItemKindModule"] = { link = "TSNamespace" },
    ["CmpItemKindOperator"] = { link = "Operator" },
    ["CmpItemKindProperty"] = { link = "TSProperty" },
    ["CmpItemKindReference"] = { link = "Keyword" },
    ["CmpItemKindSnippet"] = { fg = "#cdcbe0" },
    ["CmpItemKindStruct"] = { link = "Type" },
    ["CmpItemKindTypeParameter"] = { link = "TSField" },
    ["CmpItemKindUnit"] = { link = "Constant" },
    ["CmpItemKindValue"] = { link = "Keyword" },
    ["CmpItemKindVariable"] = { link = "TSVariable" },
    ["CmpItemMenu"] = { link = "Comment" },
    ["ColorColumn"] = { bg = "#2d2a45" },
    ["Comment"] = { fg = "#817c9c" },
    ["Conceal"] = { fg = "#4b4673" },
    ["Conditional"] = { fg = "#ccb1ed" },
    ["Constant"] = { fg = "#f0a4a2" },
    ["CurSearch"] = { link = "IncSearch" },
    ["Cursor"] = { bg = "#e0def4", fg = "#232136" },
    ["CursorColumn"] = { link = "CursorLine" },
    ["CursorIM"] = { link = "Cursor" },
    ["CursorLine"] = { bg = "#373354" },
    ["CursorLineNr"] = { fg = "#f6c177" },
    ["DapUIBreakpointsCurrentLine"] = { fg = "#a3be8c" },
    ["DapUIBreakpointsDisabledLine"] = { fg = "#817c9c" },
    ["DapUIBreakpointsInfo"] = { fg = "#569fba" },
    ["DapUIBreakpointsLine"] = { link = "DapUILineNumber" },
    ["DapUIBreakpointsPath"] = { fg = "#a6dae3" },
    ["DapUIDecoration"] = { fg = "#6e6a86" },
    ["DapUIFloatBorder"] = { link = "FloatBorder" },
    ["DapUIFrameName"] = { link = "Normal" },
    ["DapUILineNumber"] = { link = "Number" },
    ["DapUIModifiedValue"] = { fg = "#e0def4" },
    ["DapUIScope"] = { fg = "#a6dae3" },
    ["DapUISource"] = { link = "Keyword" },
    ["DapUIStoppedThread"] = { fg = "#a6dae3" },
    ["DapUIThread"] = { link = "String" },
    ["DapUIType"] = { link = "Type" },
    ["DapUIValue"] = { fg = "#e0def4" },
    ["DapUIVariable"] = { fg = "#e0def4" },
    ["DapUIWatchesEmpty"] = { fg = "#eb6f92" },
    ["DapUIWatchesError"] = { fg = "#eb6f92" },
    ["DapUIWatchesValue"] = { fg = "#f6c177" },
    ["DashboardCenter"] = { link = "String" },
    ["DashboardFooter"] = { fg = "#f0a4a2" },
    ["DashboardHeader"] = { link = "Title" },
    ["DashboardShortCut"] = { link = "Identifier" },
    ["Debug"] = { link = "Special" },
    ["Define"] = { link = "PreProc" },
    ["Delimiter"] = { link = "Special" },
    ["DiagnosticError"] = { fg = "#eb6f92" },
    ["DiagnosticHint"] = { fg = "#a3be8c" },
    ["DiagnosticInfo"] = { fg = "#569fba" },
    ["DiagnosticSignError"] = { link = "DiagnosticError" },
    ["DiagnosticSignHint"] = { link = "DiagnosticHint" },
    ["DiagnosticSignInfo"] = { link = "DiagnosticInfo" },
    ["DiagnosticSignWarn"] = { link = "DiagnosticWarn" },
    ["DiagnosticUnderlineError"] = { undercurl = true },
    ["DiagnosticUnderlineHint"] = { undercurl = true },
    ["DiagnosticUnderlineInfo"] = { undercurl = true },
    ["DiagnosticUnderlineWarn"] = { undercurl = true },
    ["DiagnosticVirtualTextError"] = { bg = "#412d44", fg = "#eb6f92" },
    ["DiagnosticVirtualTextHint"] = { bg = "#363943", fg = "#a3be8c" },
    ["DiagnosticVirtualTextInfo"] = { bg = "#2b344a", fg = "#569fba" },
    ["DiagnosticVirtualTextWarn"] = { bg = "#433940", fg = "#f6c177" },
    ["DiagnosticWarn"] = { fg = "#f6c177" },
    ["DiffAdd"] = { bg = "#3d4047" },
    ["DiffChange"] = { bg = "#2d3a50" },
    ["DiffDelete"] = { bg = "#4b3148" },
    ["DiffText"] = { bg = "#37536b" },
    ["Directory"] = { fg = "#65b1cd" },
    ["EndOfBuffer"] = { fg = "#232136" },
    ["Error"] = { fg = "#eb6f92" },
    ["ErrorMsg"] = { fg = "#eb6f92" },
    ["Exception"] = { link = "Keyword" },
    ["FernBranchText"] = { fg = "#569fba" },
    ["FidgetTask"] = { link = "LineNr" },
    ["FidgetTitle"] = { link = "Title" },
    ["Float"] = { link = "Number" },
    ["FloatBorder"] = { fg = "#6e6a86" },
    ["FocusedSymbol"] = { link = "Search" },
    ["FoldColumn"] = { fg = "#6e6a86" },
    ["Folded"] = { bg = "#2d2a45", fg = "#6e6a86" },
    ["Function"] = { fg = "#65b1cd" },
    ["GitGutterAdd"] = { fg = "#a3be8c" },
    ["GitGutterChange"] = { fg = "#f6c177" },
    ["GitGutterDelete"] = { fg = "#eb6f92" },
    ["GitSignsAdd"] = { fg = "#a3be8c" },
    ["GitSignsChange"] = { fg = "#f6c177" },
    ["GitSignsDelete"] = { fg = "#eb6f92" },
    ["GlyphPalette0"] = { fg = "#393552" },
    ["GlyphPalette1"] = { fg = "#eb6f92" },
    ["GlyphPalette10"] = { fg = "#b1d196" },
    ["GlyphPalette11"] = { fg = "#f9cb8c" },
    ["GlyphPalette12"] = { fg = "#65b1cd" },
    ["GlyphPalette13"] = { fg = "#ccb1ed" },
    ["GlyphPalette14"] = { fg = "#a6dae3" },
    ["GlyphPalette15"] = { fg = "#e2e0f7" },
    ["GlyphPalette2"] = { fg = "#a3be8c" },
    ["GlyphPalette3"] = { fg = "#f6c177" },
    ["GlyphPalette4"] = { fg = "#569fba" },
    ["GlyphPalette5"] = { fg = "#c4a7e7" },
    ["GlyphPalette6"] = { fg = "#9ccfd8" },
    ["GlyphPalette7"] = { fg = "#e2e0f7" },
    ["GlyphPalette8"] = { fg = "#47407d" },
    ["GlyphPalette9"] = { fg = "#f083a2" },
    ["HopNextKey"] = { fg = "#9ccfd8" },
    ["HopNextKey1"] = { fg = "#569fba" },
    ["HopNextKey2"] = { fg = "#4a869c" },
    ["HopUnmatched"] = { fg = "#817c9c" },
    ["Identifier"] = { fg = "#9ccfd8" },
    ["IncSearch"] = { bg = "#a3be8c", fg = "#433c59" },
    ["Include"] = { link = "PreProc" },
    ["Italic"] = { italic = true },
    ["Keyword"] = { fg = "#c4a7e7" },
    ["Label"] = { link = "Conditional" },
    ["LightspeedGreyWash"] = { fg = "#817c9c" },
    ["LineNr"] = { fg = "#6e6a86" },
    ["LspCodeLens"] = { fg = "#817c9c" },
    ["LspCodeLensSeparator"] = { fg = "#6e6a86" },
    ["LspFloatWinBorder"] = { fg = "#6e6a86" },
    ["LspFloatWinNormal"] = { bg = "#191726" },
    ["LspReferenceRead"] = { bg = "#433c59" },
    ["LspReferenceText"] = { bg = "#433c59" },
    ["LspReferenceWrite"] = { bg = "#433c59" },
    ["LspSagaBorderTitle"] = { link = "Title" },
    ["LspSagaCodeActionBorder"] = { fg = "#6e6a86" },
    ["LspSagaCodeActionContent"] = { link = "String" },
    ["LspSagaCodeActionTitle"] = { link = "Title" },
    ["LspSagaDefPreviewBorder"] = { fg = "#6e6a86" },
    ["LspSagaFinderSelection"] = { fg = "#433c59" },
    ["LspSagaHoverBorder"] = { fg = "#6e6a86" },
    ["LspSagaRenameBorder"] = { fg = "#6e6a86" },
    ["LspSagaSignatureHelpBorder"] = { fg = "#eb6f92" },
    ["LspSignatureActiveParameter"] = { fg = "#63577d" },
    ["LspTroubleCount"] = { bg = "#6e6a86", fg = "#c4a7e7" },
    ["LspTroubleNormal"] = { bg = "#191726", fg = "#6e6a86" },
    ["LspTroubleText"] = { fg = "#cdcbe0" },
    ["Macro"] = { link = "PreProc" },
    ["MatchParen"] = { fg = "#f6c177" },
    ["ModeMsg"] = { fg = "#f6c177" },
    ["ModesCopy"] = { bg = "#f6c177" },
    ["ModesDelete"] = { bg = "#eb6f92" },
    ["ModesInsert"] = { bg = "#9ccfd8" },
    ["ModesVisual"] = { bg = "#c4a7e7" },
    ["MoreMsg"] = { fg = "#569fba" },
    ["NeoTreeDimText"] = { link = "Conceal" },
    ["NeoTreeDirectoryIcon"] = { fg = "#569fba" },
    ["NeoTreeDirectoryName"] = { fg = "#569fba" },
    ["NeoTreeDotfile"] = { fg = "#4a869c" },
    ["NeoTreeFileName"] = { fg = "#cdcbe0" },
    ["NeoTreeFileNameOpened"] = { fg = "#e0def4" },
    ["NeoTreeGitAdded"] = { fg = "#a3be8c" },
    ["NeoTreeGitConflict"] = { fg = "#ea9a97" },
    ["NeoTreeGitDeleted"] = { fg = "#eb6f92" },
    ["NeoTreeGitIgnored"] = { fg = "#817c9c" },
    ["NeoTreeGitModified"] = { fg = "#f6c177" },
    ["NeoTreeGitUntracked"] = { fg = "#a580d2" },
    ["NeoTreeIndentMarker"] = { fg = "#4b4673" },
    ["NeoTreeNormal"] = { bg = "#191726", fg = "#e0def4" },
    ["NeoTreeNormalNC"] = { link = "NeoTreeNormal" },
    ["NeoTreeRootName"] = { fg = "#ea9a97" },
    ["NeoTreeSymbolicLinkTarget"] = { fg = "#d871a6" },
    ["NeogitBranch"] = { fg = "#f6c177" },
    ["NeogitDiffAdd"] = { fg = "#a3be8c" },
    ["NeogitDiffAddHighlight"] = { bg = "#3d4047" },
    ["NeogitDiffContextHighlight"] = { bg = "#2d3a50" },
    ["NeogitDiffDelete"] = { fg = "#eb6f92" },
    ["NeogitDiffDeleteHighlight"] = { bg = "#4b3148" },
    ["NeogitHunkHeader"] = { bg = "#373354", fg = "#569fba" },
    ["NeogitHunkHeaderHighlight"] = { bg = "#433c59", fg = "#569fba" },
    ["NeogitNotificationError"] = { fg = "#eb6f92" },
    ["NeogitNotificationInfo"] = { fg = "#569fba" },
    ["NeogitNotificationWarning"] = { fg = "#f6c177" },
    ["NeogitRemote"] = { fg = "#a3be8c" },
    ["NonText"] = { fg = "#4b4673" },
    ["Normal"] = { fg = "#e0def4" },
    ["NormalFloat"] = { bg = "#191726", fg = "#e0def4" },
    ["NormalNC"] = { bg = "#232136", fg = "#e0def4" },
    ["NotifyDEBUGBorder"] = { fg = "#637061" },
    ["NotifyDEBUGIcon"] = { link = "NotifyDEBUGTitle" },
    ["NotifyDEBUGTitle"] = { fg = "#a3be8c" },
    ["NotifyERRORBorder"] = { fg = "#874864" },
    ["NotifyERRORIcon"] = { link = "NotifyERRORTitle" },
    ["NotifyERRORTitle"] = { fg = "#eb6f92" },
    ["NotifyINFOBorder"] = { fg = "#3d6078" },
    ["NotifyINFOIcon"] = { link = "NotifyINFOTitle" },
    ["NotifyINFOTitle"] = { fg = "#569fba" },
    ["NotifyTRACEBorder"] = { fg = "#4b4673" },
    ["NotifyTRACEIcon"] = { link = "NotifyTRACETitle" },
    ["NotifyTRACETitle"] = { fg = "#817c9c" },
    ["NotifyWARNBorder"] = { fg = "#8c7156" },
    ["NotifyWARNIcon"] = { link = "NotifyWARNTitle" },
    ["NotifyWARNTitle"] = { fg = "#f6c177" },
    ["Number"] = { fg = "#ea9a97" },
    ["NvimTreeEmptyFolderName"] = { fg = "#6e6a86" },
    ["NvimTreeFolderIcon"] = { fg = "#569fba" },
    ["NvimTreeFolderName"] = { fg = "#569fba" },
    ["NvimTreeGitDeleted"] = { fg = "#eb6f92" },
    ["NvimTreeGitDirty"] = { fg = "#f6c177" },
    ["NvimTreeGitMerge"] = { fg = "#ea9a97" },
    ["NvimTreeGitNew"] = { fg = "#a3be8c" },
    ["NvimTreeGitRenamed"] = { link = "NvimTreeGitDeleted" },
    ["NvimTreeGitStaged"] = { link = "NvimTreeGitStaged" },
    ["NvimTreeImageFile"] = { fg = "#b1acde" },
    ["NvimTreeIndentMarker"] = { fg = "#4b4673" },
    ["NvimTreeNormal"] = { bg = "#191726", fg = "#e0def4" },
    ["NvimTreeOpenedFile"] = { fg = "#f0a6cc" },
    ["NvimTreeOpenedFolderName"] = { fg = "#65b1cd" },
    ["NvimTreeRootFolder"] = { fg = "#ea9a97" },
    ["NvimTreeSpecialFile"] = { fg = "#9ccfd8" },
    ["NvimTreeSymlink"] = { fg = "#d871a6" },
    ["NvimTreeVertSplit"] = { link = "VertSplit" },
    ["Operator"] = { fg = "#cdcbe0" },
    ["Pmenu"] = { bg = "#433c59", fg = "#e0def4" },
    ["PmenuSbar"] = { link = "Pmenu" },
    ["PmenuSel"] = { bg = "#63577d" },
    ["PmenuThumb"] = { bg = "#63577d" },
    ["PounceAccept"] = { bg = "#f0a4a2", fg = "#232136" },
    ["PounceAcceptBest"] = { bg = "#a6dae3", fg = "#232136" },
    ["PounceGap"] = { bg = "#433c59", fg = "#e0def4" },
    ["PounceMatch"] = { bg = "#63577d", fg = "#e0def4" },
    ["PreCondit"] = { link = "PreProc" },
    ["PreProc"] = { fg = "#f0a6cc" },
    ["Question"] = { link = "MoreMsg" },
    ["QuickFixLine"] = { link = "CursorLine" },
    ["Repeat"] = { link = "Conditional" },
    ["Search"] = { bg = "#63577d", fg = "#e0def4" },
    ["SignColumn"] = { fg = "#6e6a86" },
    ["SignColumnSB"] = { link = "SignColumn" },
    ["Sneak"] = { bg = "#c4a7e7", fg = "#191726" },
    ["SneakScope"] = { bg = "#433c59" },
    ["Special"] = { fg = "#65b1cd" },
    ["SpecialChar"] = { link = "Special" },
    ["SpecialComment"] = { link = "Special" },
    ["SpecialKey"] = { link = "NonText" },
    ["SpellBad"] = { undercurl = true },
    ["SpellCap"] = { undercurl = true },
    ["SpellLocal"] = { undercurl = true },
    ["SpellRare"] = { undercurl = true },
    ["Statement"] = { fg = "#c4a7e7" },
    ["StatusLine"] = { bg = "#191726", fg = "#cdcbe0" },
    ["StatusLineNC"] = { bg = "#191726", fg = "#6e6a86" },
    ["StorageClass"] = { link = "Type" },
    ["String"] = { fg = "#a3be8c" },
    ["Structure"] = { link = "Type" },
    ["Substitute"] = { bg = "#eb6f92", fg = "#232136" },
    ["SymbolOutlineConnector"] = { link = "Conceal" },
    ["TSAttribute"] = { link = "Constant" },
    ["TSConstBuiltin"] = { fg = "#f0a4a2" },
    ["TSConstructor"] = { fg = "#c4a7e7" },
    ["TSDanger"] = { fg = "#eb6f92" },
    ["TSError"] = { fg = "#eb6f92" },
    ["TSField"] = { fg = "#569fba" },
    ["TSFuncBuiltin"] = { fg = "#eb6f92" },
    ["TSFuncMacro"] = { fg = "#eb6f92" },
    ["TSKeywordFunction"] = { fg = "#eb6f92" },
    ["TSKeywordOperator"] = { fg = "#cdcbe0" },
    ["TSNamespace"] = { fg = "#a6dae3" },
    ["TSNote"] = { fg = "#569fba" },
    ["TSOperator"] = { fg = "#cdcbe0" },
    ["TSProperty"] = { link = "TSField" },
    ["TSPunctBracket"] = { fg = "#cdcbe0" },
    ["TSPunctDelimiter"] = { fg = "#cdcbe0" },
    ["TSPunctSpecial"] = { fg = "#cdcbe0" },
    ["TSStringEscape"] = { fg = "#f9cb8c" },
    ["TSStringRegex"] = { fg = "#f9cb8c" },
    ["TSTextReference"] = { fg = "#c4a7e7" },
    ["TSTypeBuiltin"] = { fg = "#a6dae3" },
    ["TSURI"] = { fg = "#9ccfd8" },
    ["TSVariable"] = { fg = "#e0def4" },
    ["TSVariableBuiltin"] = { fg = "#eb6f92" },
    ["TSWarning"] = { fg = "#f6c177" },
    ["TabLine"] = { bg = "#2d2a45", fg = "#6e6a86" },
    ["TabLineFill"] = { bg = "#191726" },
    ["TabLineSel"] = { bg = "#4b4673", fg = "#cdcbe0" },
    ["Tag"] = { link = "Special" },
    ["TelescopeBorder"] = { fg = "#4b4673" },
    ["TelescopeMatching"] = { link = "Search" },
    ["TelescopeSelection"] = { link = "CursorLine" },
    ["TelescopeSelectionCaret"] = { fg = "#a3be8c" },
    ["Title"] = { fg = "#65b1cd" },
    ["Todo"] = { bg = "#569fba", fg = "#232136" },
    ["Type"] = { fg = "#f6c177" },
    ["Typedef"] = { link = "Type" },
    ["Underlined"] = { underline = true },
    ["VertSplit"] = { fg = "#4b4673" },
    ["Visual"] = { bg = "#433c59" },
    ["VisualNOS"] = { link = "visual" },
    ["WarningMsg"] = { fg = "#f6c177" },
    ["WhichKey"] = { link = "Identifier" },
    ["WhichKeyDesc"] = { link = "Keyword" },
    ["WhichKeyFloat"] = { bg = "#191726" },
    ["WhichKeyGroup"] = { link = "Function" },
    ["WhichKeySeparator"] = { link = "Comment" },
    ["WhichKeySeperator"] = { link = "Comment" },
    ["WhichKeyValue"] = { link = "Comment" },
    ["Whitespace"] = { fg = "#2d2a45" },
    ["WildMenu"] = { link = "Pmenu" },
    ["diffAdded"] = { fg = "#a3be8c" },
    ["diffChanged"] = { fg = "#f6c177" },
    ["diffFile"] = { fg = "#569fba" },
    ["diffIndexLine"] = { fg = "#f0a6cc" },
    ["diffLine"] = { fg = "#f0a4a2" },
    ["diffNewFile"] = { fg = "#a3be8c" },
    ["diffOldFile"] = { fg = "#f6c177" },
    ["diffRemoved"] = { fg = "#eb6f92" },
    ["illuminatedCurWord"] = { link = "LspReferenceText" },
    ["illuminatedWord"] = { link = "LspReferenceText" },
    ["lCursor"] = { link = "Cursor" },
    ["qfFileName"] = { link = "Directory" },
    ["qfLineNr"] = { link = "lineNr" },
    ["rainbowcol1"] = { fg = "#eb6f92" },
    ["rainbowcol2"] = { fg = "#f6c177" },
    ["rainbowcol3"] = { fg = "#a3be8c" },
    ["rainbowcol4"] = { fg = "#569fba" },
    ["rainbowcol5"] = { fg = "#9ccfd8" },
    ["rainbowcol6"] = { fg = "#c4a7e7" },
    ["rainbowcol7"] = { fg = "#eb98c3" },
    ["rustTSField"] = { fg = "#cdcbe0" },
}

return {
    colors = colors,
    hls = hls
}
