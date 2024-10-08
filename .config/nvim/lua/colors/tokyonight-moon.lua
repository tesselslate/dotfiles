-- Made with 'mini.colors' module of https://github.com/echasnovski/mini.nvim

if vim.g.colors_name ~= nil then vim.cmd('highlight clear') end
vim.g.colors_name = "tokyonight-moon"

-- Highlight groups
local hi = vim.api.nvim_set_hl

hi(0, "@annotation", { link = "PreProc" })
hi(0, "@attribute", { link = "PreProc" })
hi(0, "@character.printf", { link = "SpecialChar" })
hi(0, "@character.special", { link = "SpecialChar" })
hi(0, "@comment.error", { fg = "#c53b53" })
hi(0, "@comment.hint", { fg = "#4fd6be" })
hi(0, "@comment.info", { fg = "#0db9d7" })
hi(0, "@comment.note", { fg = "#4fd6be" })
hi(0, "@comment.todo", { fg = "#82aaff" })
hi(0, "@comment.warning", { fg = "#ffc777" })
hi(0, "@constant.builtin", { link = "Special" })
hi(0, "@constant.macro", { link = "Define" })
hi(0, "@constructor", { fg = "#c099ff" })
hi(0, "@constructor.tsx", { fg = "#65bcff" })
hi(0, "@diff.delta", { link = "DiffChange" })
hi(0, "@diff.minus", { link = "DiffDelete" })
hi(0, "@diff.plus", { link = "DiffAdd" })
hi(0, "@function.builtin", { link = "Special" })
hi(0, "@function.call", { link = "@function" })
hi(0, "@function.macro", { link = "Macro" })
hi(0, "@function.method", { link = "Function" })
hi(0, "@function.method.call", { link = "@function.method" })
hi(0, "@keyword", { fg = "#fca7ea" })
hi(0, "@keyword.conditional", { link = "Conditional" })
hi(0, "@keyword.coroutine", { link = "@keyword" })
hi(0, "@keyword.debug", { link = "Debug" })
hi(0, "@keyword.directive", { link = "PreProc" })
hi(0, "@keyword.directive.define", { link = "Define" })
hi(0, "@keyword.exception", { link = "Exception" })
hi(0, "@keyword.function", { fg = "#c099ff" })
hi(0, "@keyword.import", { link = "Include" })
hi(0, "@keyword.operator", { link = "@operator" })
hi(0, "@keyword.repeat", { link = "Repeat" })
hi(0, "@keyword.return", { link = "@keyword" })
hi(0, "@keyword.storage", { link = "StorageClass" })
hi(0, "@label", { fg = "#82aaff" })
hi(0, "@lsp.type.boolean", { link = "@boolean" })
hi(0, "@lsp.type.builtinType", { link = "@type.builtin" })
hi(0, "@lsp.type.comment", { link = "@comment" })
hi(0, "@lsp.type.decorator", { link = "@attribute" })
hi(0, "@lsp.type.deriveHelper", { link = "@attribute" })
hi(0, "@lsp.type.enum", { link = "@type" })
hi(0, "@lsp.type.enumMember", { link = "@constant" })
hi(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
hi(0, "@lsp.type.formatSpecifier", { link = "@markup.list" })
hi(0, "@lsp.type.generic", { link = "@variable" })
hi(0, "@lsp.type.interface", { fg = "#83c3fc" })
hi(0, "@lsp.type.keyword", { link = "@keyword" })
hi(0, "@lsp.type.lifetime", { link = "@keyword.storage" })
hi(0, "@lsp.type.namespace", { link = "@module" })
hi(0, "@lsp.type.namespace.python", { link = "@variable" })
hi(0, "@lsp.type.number", { link = "@number" })
hi(0, "@lsp.type.operator", { link = "@operator" })
hi(0, "@lsp.type.parameter", { link = "@variable.parameter" })
hi(0, "@lsp.type.property", { link = "@property" })
hi(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
hi(0, "@lsp.type.selfTypeKeyword", { link = "@variable.builtin" })
hi(0, "@lsp.type.string", { link = "@string" })
hi(0, "@lsp.type.typeAlias", { link = "@type.definition" })
hi(0, "@lsp.type.unresolvedReference", { sp = "#c53b53", undercurl = true })
hi(0, "@lsp.type.variable", {})
hi(0, "@lsp.typemod.class.defaultLibrary", { link = "@type.builtin" })
hi(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type.builtin" })
hi(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
hi(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
hi(0, "@lsp.typemod.keyword.async", { link = "@keyword.coroutine" })
hi(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
hi(0, "@lsp.typemod.macro.defaultLibrary", { link = "@function.builtin" })
hi(0, "@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
hi(0, "@lsp.typemod.operator.injected", { link = "@operator" })
hi(0, "@lsp.typemod.string.injected", { link = "@string" })
hi(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type.builtin" })
hi(0, "@lsp.typemod.type.defaultLibrary", { fg = "#589ed7" })
hi(0, "@lsp.typemod.typeAlias.defaultLibrary", { fg = "#589ed7" })
hi(0, "@lsp.typemod.variable.callable", { link = "@function" })
hi(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
hi(0, "@lsp.typemod.variable.injected", { link = "@variable" })
hi(0, "@lsp.typemod.variable.static", { link = "@constant" })
hi(0, "@markup", { link = "@none" })
hi(0, "@markup.emphasis", { italic = true })
hi(0, "@markup.environment", { link = "Macro" })
hi(0, "@markup.environment.name", { link = "Type" })
hi(0, "@markup.heading", { link = "Title" })
hi(0, "@markup.heading.1.markdown", { bold = true, fg = "#82aaff" })
hi(0, "@markup.heading.2.markdown", { bold = true, fg = "#ffc777" })
hi(0, "@markup.heading.3.markdown", { bold = true, fg = "#c3e88d" })
hi(0, "@markup.heading.4.markdown", { bold = true, fg = "#4fd6be" })
hi(0, "@markup.heading.5.markdown", { bold = true, fg = "#c099ff" })
hi(0, "@markup.heading.6.markdown", { bold = true, fg = "#fca7ea" })
hi(0, "@markup.link", { fg = "#4fd6be" })
hi(0, "@markup.link.label", { link = "SpecialChar" })
hi(0, "@markup.link.label.symbol", { link = "Identifier" })
hi(0, "@markup.link.url", { link = "Underlined" })
hi(0, "@markup.list", { fg = "#89ddff" })
hi(0, "@markup.list.checked", { fg = "#4fd6be" })
hi(0, "@markup.list.markdown", { bold = true, fg = "#ff966c" })
hi(0, "@markup.list.unchecked", { fg = "#82aaff" })
hi(0, "@markup.math", { link = "Special" })
hi(0, "@markup.raw", { link = "String" })
hi(0, "@markup.raw.markdown_inline", { bg = "#444a73", fg = "#82aaff" })
hi(0, "@module", { link = "Include" })
hi(0, "@module.builtin", { fg = "#ff757f" })
hi(0, "@namespace.builtin", { link = "@variable.builtin" })
hi(0, "@number.float", { link = "Float" })
hi(0, "@operator", { fg = "#89ddff" })
hi(0, "@property", { fg = "#4fd6be" })
hi(0, "@punctuation.bracket", { fg = "#828bb8" })
hi(0, "@punctuation.delimiter", { fg = "#89ddff" })
hi(0, "@punctuation.special", { fg = "#89ddff" })
hi(0, "@string.documentation", { fg = "#ffc777" })
hi(0, "@string.escape", { fg = "#c099ff" })
hi(0, "@string.regexp", { fg = "#b4f9f8" })
hi(0, "@tag", { link = "Label" })
hi(0, "@tag.attribute", { link = "@property" })
hi(0, "@tag.delimiter", { link = "Delimiter" })
hi(0, "@tag.delimiter.tsx", { fg = "#6582c3" })
hi(0, "@tag.javascript", { fg = "#ff757f" })
hi(0, "@tag.tsx", { fg = "#ff757f" })
hi(0, "@type.builtin", { fg = "#589ed7" })
hi(0, "@type.definition", { link = "Typedef" })
hi(0, "@type.qualifier", { link = "@keyword" })
hi(0, "@variable", { fg = "#c8d3f5" })
hi(0, "@variable.builtin", { fg = "#ff757f" })
hi(0, "@variable.member", { fg = "#4fd6be" })
hi(0, "@variable.parameter", { fg = "#ffc777" })
hi(0, "@variable.parameter.builtin", { fg = "#f4c990" })
hi(0, "Bold", { bold = true, fg = "#c8d3f5" })
hi(0, "Character", { fg = "#c3e88d" })
hi(0, "CmpDocumentation", { bg = "#1e2030", fg = "#c8d3f5" })
hi(0, "CmpDocumentationBorder", { bg = "#1e2030", fg = "#589ed7" })
hi(0, "CmpGhostText", { fg = "#444a73" })
hi(0, "CmpItemAbbr", { fg = "#c8d3f5" })
hi(0, "CmpItemAbbrDefault", { fg = "#c8d3f5" })
hi(0, "CmpItemAbbrDeprecated", { fg = "#3b4261", strikethrough = true })
hi(0, "CmpItemAbbrDeprecatedDefault", { fg = "#636da6" })
hi(0, "CmpItemAbbrMatch", { fg = "#65bcff" })
hi(0, "CmpItemAbbrMatchDefault", { fg = "#c8d3f5" })
hi(0, "CmpItemAbbrMatchFuzzy", { fg = "#65bcff" })
hi(0, "CmpItemAbbrMatchFuzzyDefault", { fg = "#c8d3f5" })
hi(0, "CmpItemKindArray", { link = "LspKindArray" })
hi(0, "CmpItemKindBoolean", { link = "LspKindBoolean" })
hi(0, "CmpItemKindClass", { link = "LspKindClass" })
hi(0, "CmpItemKindClassDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindCodeium", { fg = "#4fd6be" })
hi(0, "CmpItemKindColor", { link = "LspKindColor" })
hi(0, "CmpItemKindColorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstant", { link = "LspKindConstant" })
hi(0, "CmpItemKindConstantDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstructor", { link = "LspKindConstructor" })
hi(0, "CmpItemKindConstructorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindCopilot", { fg = "#4fd6be" })
hi(0, "CmpItemKindDefault", { fg = "#65bcff" })
hi(0, "CmpItemKindEnum", { link = "LspKindEnum" })
hi(0, "CmpItemKindEnumDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEnumMember", { link = "LspKindEnumMember" })
hi(0, "CmpItemKindEnumMemberDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEvent", { link = "LspKindEvent" })
hi(0, "CmpItemKindEventDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindField", { link = "LspKindField" })
hi(0, "CmpItemKindFieldDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFile", { link = "LspKindFile" })
hi(0, "CmpItemKindFileDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFolder", { link = "LspKindFolder" })
hi(0, "CmpItemKindFolderDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFunction", { link = "LspKindFunction" })
hi(0, "CmpItemKindFunctionDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindInterface", { link = "LspKindInterface" })
hi(0, "CmpItemKindInterfaceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindKey", { link = "LspKindKey" })
hi(0, "CmpItemKindKeyword", { link = "LspKindKeyword" })
hi(0, "CmpItemKindKeywordDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindMethod", { link = "LspKindMethod" })
hi(0, "CmpItemKindMethodDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindModule", { link = "LspKindModule" })
hi(0, "CmpItemKindModuleDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindNamespace", { link = "LspKindNamespace" })
hi(0, "CmpItemKindNull", { link = "LspKindNull" })
hi(0, "CmpItemKindNumber", { link = "LspKindNumber" })
hi(0, "CmpItemKindObject", { link = "LspKindObject" })
hi(0, "CmpItemKindOperator", { link = "LspKindOperator" })
hi(0, "CmpItemKindOperatorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindPackage", { link = "LspKindPackage" })
hi(0, "CmpItemKindProperty", { link = "LspKindProperty" })
hi(0, "CmpItemKindPropertyDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindReference", { link = "LspKindReference" })
hi(0, "CmpItemKindReferenceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindSnippet", { link = "LspKindSnippet" })
hi(0, "CmpItemKindSnippetDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindString", { link = "LspKindString" })
hi(0, "CmpItemKindStruct", { link = "LspKindStruct" })
hi(0, "CmpItemKindStructDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindSupermaven", { fg = "#4fd6be" })
hi(0, "CmpItemKindTabNine", { fg = "#4fd6be" })
hi(0, "CmpItemKindText", { link = "LspKindText" })
hi(0, "CmpItemKindTextDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindTypeParameter", { link = "LspKindTypeParameter" })
hi(0, "CmpItemKindTypeParameterDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindUnit", { link = "LspKindUnit" })
hi(0, "CmpItemKindUnitDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindValue", { link = "LspKindValue" })
hi(0, "CmpItemKindValueDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindVariable", { link = "LspKindVariable" })
hi(0, "CmpItemKindVariableDefault", { link = "CmpItemKind" })
hi(0, "CmpItemMenu", { fg = "#636da6" })
hi(0, "CmpItemMenuDefault", { fg = "#c8d3f5" })
hi(0, "ColorColumn", { bg = "#1b1d2b" })
hi(0, "Comment", { fg = "#636da6" })
hi(0, "Conceal", { fg = "#737aa2" })
hi(0, "Constant", { fg = "#ff966c" })
hi(0, "CurSearch", { link = "IncSearch" })
hi(0, "Cursor", { bg = "#c8d3f5", fg = "#222436" })
hi(0, "CursorColumn", { bg = "#2f334d" })
hi(0, "CursorIM", { bg = "#c8d3f5", fg = "#222436" })
hi(0, "CursorLine", { bg = "#2f334d" })
hi(0, "CursorLineNr", { bold = true, fg = "#ff966c" })
hi(0, "Debug", { fg = "#ff966c" })
hi(0, "Delimiter", { link = "Special" })
hi(0, "DiagnosticError", { fg = "#c53b53" })
hi(0, "DiagnosticHint", { fg = "#4fd6be" })
hi(0, "DiagnosticInfo", { fg = "#0db9d7" })
hi(0, "DiagnosticUnderlineError", { sp = "#c53b53", undercurl = true })
hi(0, "DiagnosticUnderlineHint", { sp = "#4fd6be", undercurl = true })
hi(0, "DiagnosticUnderlineInfo", { sp = "#0db9d7", undercurl = true })
hi(0, "DiagnosticUnderlineWarn", { sp = "#ffc777", undercurl = true })
hi(0, "DiagnosticUnnecessary", { fg = "#444a73" })
hi(0, "DiagnosticVirtualTextError", { bg = "#322639", fg = "#c53b53" })
hi(0, "DiagnosticVirtualTextHint", { bg = "#273644", fg = "#4fd6be" })
hi(0, "DiagnosticVirtualTextInfo", { bg = "#203346", fg = "#0db9d7" })
hi(0, "DiagnosticVirtualTextWarn", { bg = "#38343d", fg = "#ffc777" })
hi(0, "DiagnosticWarn", { fg = "#ffc777" })
hi(0, "DiffAdd", { bg = "#273849" })
hi(0, "DiffChange", { bg = "#252a3f" })
hi(0, "DiffDelete", { bg = "#3a273a" })
hi(0, "DiffText", { bg = "#394b70" })
hi(0, "Directory", { fg = "#82aaff" })
hi(0, "EndOfBuffer", {})
hi(0, "Error", { fg = "#c53b53" })
hi(0, "ErrorMsg", { fg = "#c53b53" })
hi(0, "FloatBorder", { bg = "#1e2030", fg = "#589ed7" })
hi(0, "FloatTitle", { bg = "#1e2030", fg = "#589ed7" })
hi(0, "FoldColumn", { fg = "#636da6" })
hi(0, "Folded", { bg = "#3b4261", fg = "#82aaff" })
hi(0, "Foo", { bg = "#ff007c", fg = "#c8d3f5" })
hi(0, "Function", { fg = "#82aaff" })
hi(0, "GitSignsAdd", { fg = "#b8db87" })
hi(0, "GitSignsChange", { fg = "#7ca1f2" })
hi(0, "GitSignsDelete", { fg = "#e26a75" })
hi(0, "GitSignsStagedAdd", { fg = "#5c6d43" })
hi(0, "GitSignsStagedAddCul", { fg = "#5c6d43" })
hi(0, "GitSignsStagedAddLn", { bg = "#273849" })
hi(0, "GitSignsStagedAddNr", { fg = "#5c6d43" })
hi(0, "GitSignsStagedChange", { fg = "#3e5079" })
hi(0, "GitSignsStagedChangeCul", { fg = "#3e5079" })
hi(0, "GitSignsStagedChangeLn", { bg = "#252a3f" })
hi(0, "GitSignsStagedChangeNr", { fg = "#3e5079" })
hi(0, "GitSignsStagedChangedelete", { fg = "#3e5079" })
hi(0, "GitSignsStagedChangedeleteCul", { fg = "#3e5079" })
hi(0, "GitSignsStagedChangedeleteLn", { bg = "#252a3f" })
hi(0, "GitSignsStagedChangedeleteNr", { fg = "#3e5079" })
hi(0, "GitSignsStagedDelete", { fg = "#71353a" })
hi(0, "GitSignsStagedDeleteCul", { fg = "#71353a" })
hi(0, "GitSignsStagedDeleteNr", { fg = "#71353a" })
hi(0, "GitSignsStagedTopdelete", { fg = "#71353a" })
hi(0, "GitSignsStagedTopdeleteCul", { fg = "#71353a" })
hi(0, "GitSignsStagedTopdeleteNr", { fg = "#71353a" })
hi(0, "Identifier", { fg = "#c099ff" })
hi(0, "IncSearch", { bg = "#ff966c", fg = "#1b1d2b" })
hi(0, "Italic", { fg = "#c8d3f5", italic = true })
hi(0, "Keyword", { fg = "#86e1fc" })
hi(0, "LazyProgressDone", { bold = true, fg = "#ff007c" })
hi(0, "LazyProgressTodo", { bold = true, fg = "#3b4261" })
hi(0, "LineNr", { fg = "#828bb8" })
hi(0, "LineNrAbove", { fg = "#3b4261" })
hi(0, "LineNrBelow", { fg = "#3b4261" })
hi(0, "LspCodeLens", { fg = "#636da6" })
hi(0, "LspInfoBorder", { bg = "#1e2030", fg = "#589ed7" })
hi(0, "LspInlayHint", { bg = "#24283c", fg = "#545c7e" })
hi(0, "LspKindArray", { link = "@punctuation.bracket" })
hi(0, "LspKindBoolean", { link = "@boolean" })
hi(0, "LspKindClass", { link = "@type" })
hi(0, "LspKindColor", { link = "Special" })
hi(0, "LspKindConstant", { link = "@constant" })
hi(0, "LspKindConstructor", { link = "@constructor" })
hi(0, "LspKindEnum", { link = "@lsp.type.enum" })
hi(0, "LspKindEnumMember", { link = "@lsp.type.enumMember" })
hi(0, "LspKindEvent", { link = "Special" })
hi(0, "LspKindField", { link = "@variable.member" })
hi(0, "LspKindFile", { link = "Normal" })
hi(0, "LspKindFolder", { link = "Directory" })
hi(0, "LspKindFunction", { link = "@function" })
hi(0, "LspKindInterface", { link = "@lsp.type.interface" })
hi(0, "LspKindKey", { link = "@variable.member" })
hi(0, "LspKindKeyword", { link = "@lsp.type.keyword" })
hi(0, "LspKindMethod", { link = "@function.method" })
hi(0, "LspKindModule", { link = "@module" })
hi(0, "LspKindNamespace", { link = "@module" })
hi(0, "LspKindNull", { link = "@constant.builtin" })
hi(0, "LspKindNumber", { link = "@number" })
hi(0, "LspKindObject", { link = "@constant" })
hi(0, "LspKindOperator", { link = "@operator" })
hi(0, "LspKindPackage", { link = "@module" })
hi(0, "LspKindProperty", { link = "@property" })
hi(0, "LspKindReference", { link = "@markup.link" })
hi(0, "LspKindSnippet", { link = "Conceal" })
hi(0, "LspKindString", { link = "@string" })
hi(0, "LspKindStruct", { link = "@lsp.type.struct" })
hi(0, "LspKindText", { link = "@markup" })
hi(0, "LspKindTypeParameter", { link = "@lsp.type.typeParameter" })
hi(0, "LspKindUnit", { link = "@lsp.type.struct" })
hi(0, "LspKindValue", { link = "@string" })
hi(0, "LspKindVariable", { link = "@variable" })
hi(0, "LspReferenceRead", { bg = "#3b4261" })
hi(0, "LspReferenceText", { bg = "#3b4261" })
hi(0, "LspReferenceWrite", { bg = "#3b4261" })
hi(0, "LspSignatureActiveParameter", { bg = "#262f50", bold = true })
hi(0, "MatchParen", { bold = true, fg = "#ff966c" })
hi(0, "MiniAnimateCursor", { nocombine = true, reverse = true })
hi(0, "MiniAnimateNormalFloat", { link = "NormalFloat" })
hi(0, "MiniClueBorder", { link = "FloatBorder" })
hi(0, "MiniClueDescGroup", { link = "DiagnosticFloatingWarn" })
hi(0, "MiniClueDescSingle", { link = "NormalFloat" })
hi(0, "MiniClueNextKey", { link = "DiagnosticFloatingHint" })
hi(0, "MiniClueNextKeyWithPostkeys", { link = "DiagnosticFloatingError" })
hi(0, "MiniClueSeparator", { link = "DiagnosticFloatingInfo" })
hi(0, "MiniClueTitle", { link = "FloatTitle" })
hi(0, "MiniCompletionActiveParameter", { underline = true })
hi(0, "MiniCursorword", { bg = "#3b4261" })
hi(0, "MiniCursorwordCurrent", { bg = "#3b4261" })
hi(0, "MiniDepsChangeAdded", { link = "diffAdded" })
hi(0, "MiniDepsChangeRemoved", { link = "diffRemoved" })
hi(0, "MiniDepsHint", { link = "DiagnosticHint" })
hi(0, "MiniDepsInfo", { link = "DiagnosticInfo" })
hi(0, "MiniDepsMsgBreaking", { link = "DiagnosticWarn" })
hi(0, "MiniDepsPlaceholder", { link = "Comment" })
hi(0, "MiniDepsTitle", { link = "Title" })
hi(0, "MiniDepsTitleError", { bg = "#e26a75", fg = "#1b1d2b" })
hi(0, "MiniDepsTitleSame", { link = "Comment" })
hi(0, "MiniDepsTitleUpdate", { bg = "#b8db87", fg = "#1b1d2b" })
hi(0, "MiniDiffOverAdd", { link = "DiffAdd" })
hi(0, "MiniDiffOverChange", { link = "DiffText" })
hi(0, "MiniDiffOverContext", { link = "DiffChange" })
hi(0, "MiniDiffOverDelete", { link = "DiffDelete" })
hi(0, "MiniDiffSignAdd", { fg = "#b8db87" })
hi(0, "MiniDiffSignChange", { fg = "#7ca1f2" })
hi(0, "MiniDiffSignDelete", { fg = "#e26a75" })
hi(0, "MiniFilesBorder", { link = "FloatBorder" })
hi(0, "MiniFilesBorderModified", { link = "DiagnosticFloatingWarn" })
hi(0, "MiniFilesCursorLine", { link = "CursorLine" })
hi(0, "MiniFilesDirectory", { link = "Directory" })
hi(0, "MiniFilesFile", { fg = "#c8d3f5" })
hi(0, "MiniFilesNormal", { link = "NormalFloat" })
hi(0, "MiniFilesTitle", { link = "FloatTitle" })
hi(0, "MiniFilesTitleFocused", { bg = "#1e2030", bold = true, fg = "#589ed7" })
hi(0, "MiniHipatternsFixme", { bg = "#c53b53", bold = true, fg = "#1b1d2b" })
hi(0, "MiniHipatternsHack", { bg = "#ffc777", bold = true, fg = "#1b1d2b" })
hi(0, "MiniHipatternsNote", { bg = "#4fd6be", bold = true, fg = "#1b1d2b" })
hi(0, "MiniHipatternsTodo", { bg = "#0db9d7", bold = true, fg = "#1b1d2b" })
hi(0, "MiniIconsAzure", { fg = "#0db9d7" })
hi(0, "MiniIconsBlue", { fg = "#82aaff" })
hi(0, "MiniIconsCyan", { fg = "#4fd6be" })
hi(0, "MiniIconsGreen", { fg = "#c3e88d" })
hi(0, "MiniIconsGrey", { fg = "#c8d3f5" })
hi(0, "MiniIconsOrange", { fg = "#ff966c" })
hi(0, "MiniIconsPurple", { fg = "#fca7ea" })
hi(0, "MiniIconsRed", { fg = "#ff757f" })
hi(0, "MiniIconsYellow", { fg = "#ffc777" })
hi(0, "MiniIndentscopePrefix", { nocombine = true })
hi(0, "MiniIndentscopeSymbol", { fg = "#65bcff", nocombine = true })
hi(0, "MiniJump", { bg = "#ff007c", fg = "#ffffff" })
hi(0, "MiniJump2dDim", { link = "Comment" })
hi(0, "MiniJump2dSpot", { bold = true, fg = "#ff007c", nocombine = true })
hi(0, "MiniJump2dSpotAhead", { bg = "#1e2030", fg = "#4fd6be", nocombine = true })
hi(0, "MiniJump2dSpotUnique", { bold = true, fg = "#ff966c", nocombine = true })
hi(0, "MiniMapNormal", { link = "NormalFloat" })
hi(0, "MiniMapSymbolCount", { link = "Special" })
hi(0, "MiniMapSymbolLine", { link = "Title" })
hi(0, "MiniMapSymbolView", { link = "Delimiter" })
hi(0, "MiniOperatorsExchangeFrom", { link = "IncSearch" })
hi(0, "MiniPickBorder", { link = "FloatBorder" })
hi(0, "MiniPickBorderBusy", { link = "DiagnosticFloatingWarn" })
hi(0, "MiniPickBorderText", { bg = "#1e2030", fg = "#4fd6be" })
hi(0, "MiniPickHeader", { link = "DiagnosticFloatingHint" })
hi(0, "MiniPickIconDirectory", { link = "Directory" })
hi(0, "MiniPickIconFile", { link = "MiniPickNormal" })
hi(0, "MiniPickMatchCurrent", { link = "CursorLine" })
hi(0, "MiniPickMatchMarked", { link = "Visual" })
hi(0, "MiniPickMatchRanges", { link = "DiagnosticFloatingHint" })
hi(0, "MiniPickNormal", { link = "NormalFloat" })
hi(0, "MiniPickPreviewLine", { link = "CursorLine" })
hi(0, "MiniPickPreviewRegion", { link = "IncSearch" })
hi(0, "MiniPickPrompt", { bg = "#1e2030", fg = "#0db9d7" })
hi(0, "MiniStarterCurrent", { nocombine = true })
hi(0, "MiniStarterFooter", { fg = "#ffc777", italic = true })
hi(0, "MiniStarterHeader", { fg = "#82aaff" })
hi(0, "MiniStarterInactive", { fg = "#636da6" })
hi(0, "MiniStarterItem", { fg = "#c8d3f5" })
hi(0, "MiniStarterItemBullet", { fg = "#589ed7" })
hi(0, "MiniStarterItemPrefix", { fg = "#ffc777" })
hi(0, "MiniStarterQuery", { fg = "#0db9d7" })
hi(0, "MiniStarterSection", { fg = "#65bcff" })
hi(0, "MiniStatuslineDevinfo", { bg = "#3b4261", fg = "#828bb8" })
hi(0, "MiniStatuslineFileinfo", { bg = "#3b4261", fg = "#828bb8" })
hi(0, "MiniStatuslineFilename", { bg = "#2f334d", fg = "#828bb8" })
hi(0, "MiniStatuslineInactive", { bg = "#1e2030", fg = "#82aaff" })
hi(0, "MiniStatuslineModeCommand", { bg = "#ffc777", bold = true, fg = "#1b1d2b" })
hi(0, "MiniStatuslineModeInsert", { bg = "#c3e88d", bold = true, fg = "#1b1d2b" })
hi(0, "MiniStatuslineModeNormal", { bg = "#82aaff", bold = true, fg = "#1b1d2b" })
hi(0, "MiniStatuslineModeOther", { bg = "#4fd6be", bold = true, fg = "#1b1d2b" })
hi(0, "MiniStatuslineModeReplace", { bg = "#ff757f", bold = true, fg = "#1b1d2b" })
hi(0, "MiniStatuslineModeVisual", { bg = "#c099ff", bold = true, fg = "#1b1d2b" })
hi(0, "MiniSurround", { bg = "#ff966c", fg = "#1b1d2b" })
hi(0, "MiniTablineCurrent", { bg = "#3b4261", fg = "#c8d3f5" })
hi(0, "MiniTablineFill", { bg = "#1b1d2b" })
hi(0, "MiniTablineHidden", { bg = "#1e2030", fg = "#737aa2" })
hi(0, "MiniTablineModifiedCurrent", { bg = "#3b4261", fg = "#ffc777" })
hi(0, "MiniTablineModifiedHidden", { bg = "#1e2030", fg = "#bd9664" })
hi(0, "MiniTablineModifiedVisible", { bg = "#1e2030", fg = "#ffc777" })
hi(0, "MiniTablineTabpagesection", { bg = "#3b4261" })
hi(0, "MiniTablineVisible", { bg = "#1e2030", fg = "#c8d3f5" })
hi(0, "MiniTestEmphasis", { bold = true })
hi(0, "MiniTestFail", { bold = true, fg = "#ff757f" })
hi(0, "MiniTestPass", { bold = true, fg = "#c3e88d" })
hi(0, "MiniTrailspace", { bg = "#ff757f" })
hi(0, "ModeMsg", { bold = true, fg = "#828bb8" })
hi(0, "MoreMsg", { fg = "#82aaff" })
hi(0, "MsgArea", { fg = "#828bb8" })
hi(0, "NonText", { fg = "#545c7e" })
hi(0, "Normal", { fg = "#c8d3f5" })
hi(0, "NormalFloat", { bg = "#1e2030", fg = "#c8d3f5" })
hi(0, "NormalNC", { fg = "#c8d3f5" })
hi(0, "NormalSB", { bg = "#1e2030", fg = "#828bb8" })
hi(0, "Operator", { fg = "#89ddff" })
hi(0, "Pmenu", { bg = "#1e2030", fg = "#c8d3f5" })
hi(0, "PmenuMatch", { bg = "#1e2030", fg = "#65bcff" })
hi(0, "PmenuMatchSel", { bg = "#363c58", fg = "#65bcff" })
hi(0, "PmenuSbar", { bg = "#27293a" })
hi(0, "PmenuSel", { bg = "#363c58" })
hi(0, "PmenuThumb", { bg = "#3b4261" })
hi(0, "PounceAccept", { bg = "#de940b", bold = true, ctermbg = 224, ctermfg = 0, fg = "#111111" })
hi(0, "PounceAcceptBest", { bg = "#03cafc", bold = true, ctermbg = 14, ctermfg = 0, fg = "#111111" })
hi(0, "PounceCursor", { bg = "#ff0000", bold = true, ctermbg = 9, ctermfg = 0, fg = "#111111" })
hi(0, "PounceCursorAccept", { bg = "#de940b", bold = true, ctermbg = 224, ctermfg = 0, fg = "#111111" })
hi(0, "PounceCursorAcceptBest", { bg = "#03cafc", bold = true, ctermbg = 14, ctermfg = 0, fg = "#111111" })
hi(0, "PounceCursorGap", { bg = "#aa0000", bold = true, ctermbg = 1, ctermfg = 0, fg = "#111111" })
hi(0, "PounceGap", { bg = "#00aa00", bold = true, ctermbg = 2, ctermfg = 0, fg = "#555555" })
hi(0, "PounceMatch", { bg = "#11dd11", bold = true, ctermbg = 10, ctermfg = 0, fg = "#555555" })
hi(0, "PreProc", { fg = "#86e1fc" })
hi(0, "Question", { fg = "#82aaff" })
hi(0, "QuickFixLine", { bg = "#2d3f76", bold = true })
hi(0, "Search", { bg = "#3e68d7", fg = "#c8d3f5" })
hi(0, "SignColumn", { fg = "#3b4261" })
hi(0, "SignColumnSB", { bg = "#1e2030", fg = "#3b4261" })
hi(0, "Special", { fg = "#65bcff" })
hi(0, "SpecialKey", { fg = "#545c7e" })
hi(0, "SpellBad", { sp = "#c53b53", undercurl = true })
hi(0, "SpellCap", { sp = "#ffc777", undercurl = true })
hi(0, "SpellLocal", { sp = "#0db9d7", undercurl = true })
hi(0, "SpellRare", { sp = "#4fd6be", undercurl = true })
hi(0, "Statement", { fg = "#c099ff" })
hi(0, "StatusLine", { bg = "#1e2030", fg = "#828bb8" })
hi(0, "StatusLineNC", { bg = "#1e2030", fg = "#3b4261" })
hi(0, "String", { fg = "#c3e88d" })
hi(0, "Substitute", { bg = "#ff757f", fg = "#1b1d2b" })
hi(0, "TabLine", { bg = "#1e2030", fg = "#3b4261" })
hi(0, "TabLineFill", { bg = "#1b1d2b" })
hi(0, "TabLineSel", { bg = "#82aaff", fg = "#1b1d2b" })
hi(0, "TelescopeBorder", { bg = "#1e2030", fg = "#589ed7" })
hi(0, "TelescopeNormal", { bg = "#1e2030", fg = "#c8d3f5" })
hi(0, "TelescopePromptBorder", { bg = "#1e2030", fg = "#ff966c" })
hi(0, "TelescopePromptTitle", { bg = "#1e2030", fg = "#ff966c" })
hi(0, "TelescopeResultsComment", { fg = "#545c7e" })
hi(0, "Title", { bold = true, fg = "#82aaff" })
hi(0, "Todo", { bg = "#ffc777", fg = "#222436" })
hi(0, "Type", { fg = "#65bcff" })
hi(0, "VertSplit", { fg = "#1b1d2b" })
hi(0, "Visual", { bg = "#2d3f76" })
hi(0, "VisualNOS", { bg = "#2d3f76" })
hi(0, "WarningMsg", { fg = "#ffc777" })
hi(0, "Whitespace", { fg = "#3b4261" })
hi(0, "WildMenu", { bg = "#2d3f76" })
hi(0, "WinBar", { link = "StatusLine" })
hi(0, "WinBarNC", { link = "StatusLineNC" })
hi(0, "WinSeparator", { bold = true, fg = "#1b1d2b" })
hi(0, "debugBreakpoint", { bg = "#203346", fg = "#0db9d7" })
hi(0, "debugPC", { bg = "#1e2030" })
hi(0, "diffAdded", { fg = "#b8db87" })
hi(0, "diffChanged", { fg = "#7ca1f2" })
hi(0, "diffFile", { fg = "#82aaff" })
hi(0, "diffIndexLine", { fg = "#c099ff" })
hi(0, "diffLine", { fg = "#636da6" })
hi(0, "diffNewFile", { fg = "#ff966c" })
hi(0, "diffOldFile", { fg = "#ffc777" })
hi(0, "diffRemoved", { fg = "#e26a75" })
hi(0, "dosIniLabel", { link = "@property" })
hi(0, "healthError", { fg = "#c53b53" })
hi(0, "healthSuccess", { fg = "#4fd6be" })
hi(0, "healthWarning", { fg = "#ffc777" })
hi(0, "helpCommand", { bg = "#444a73", fg = "#82aaff" })
hi(0, "helpExample", { fg = "#636da6" })
hi(0, "htmlH1", { bold = true, fg = "#c099ff" })
hi(0, "htmlH2", { bold = true, fg = "#82aaff" })
hi(0, "lCursor", { bg = "#c8d3f5", fg = "#222436" })
hi(0, "qfFileName", { fg = "#82aaff" })
hi(0, "qfLineNr", { fg = "#737aa2" })

-- Terminal colors
local g = vim.g

g.terminal_color_0 = "#1b1d2b"
g.terminal_color_1 = "#ff757f"
g.terminal_color_2 = "#c3e88d"
g.terminal_color_3 = "#ffc777"
g.terminal_color_4 = "#82aaff"
g.terminal_color_5 = "#c099ff"
g.terminal_color_6 = "#86e1fc"
g.terminal_color_7 = "#828bb8"
g.terminal_color_8 = "#444a73"
g.terminal_color_9 = "#e4a4ba"
g.terminal_color_10 = "#c6dec1"
g.terminal_color_11 = "#e4cdb6"
g.terminal_color_12 = "#a5bffa"
g.terminal_color_13 = "#c4b6fa"
g.terminal_color_14 = "#a7daf9"
g.terminal_color_15 = "#c8d3f5"
