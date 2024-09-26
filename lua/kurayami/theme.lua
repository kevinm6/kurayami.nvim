-------------------------------------
--- File         : theme.lua
--- Description  : color palette for kurayami colorscheme
--- Author       : Kevin
--- Last Modified: 18 Jul 2024, 08:58
-------------------------------------

local default = setmetatable({
	red = "#fb4934",
	green = "#36f57a",
	yellow = "#fabd2f",
	blue = "#83a598",
	purple = "#d3869b",
	aqua = "#9ec0cc",
	orange = "#fe8019",
}, {
	__index = function()
		return "#bbbbbb"
	end,
})

return {
	---Modes
	Normal = { fg = "#D0D0D0", bg = "#1c1c1c" },
	Visual = { reverse = true },
	--Selection Not-Owned by Vim
	VisualNOS = { fg = "#244E7A" },

	WinSeparator = { fg = "#3D3D40" },
	NormalFloat = { bg = "#1f1f1f" },
	FloatBorder = { fg = "#3D3D40", bg = "#1e1e1e" },

	TabLine = { bg = "#2c2c2c" },
	TabLineSel = { fg = "#dcdcdc", bg = "#1e1e1e", bold = true, italic = true },
	TabLineFill = { bg = "#1c1c1c" },

	ModeMsg = {},
	MoreMsg = {},
	MsgArea = { fg = "#626262" },

	ColorColumn = { bg = "#202020" },

	---Cursor
	Cursor = { reverse = true },
	LineNr = { fg = "#626262", bg = "#1c1c1c" },
	Cursorline = { bg = "grey15" },
	CursorLineNr = { fg = default.green, bold = true },
	lCursor = { fg = default.default.red },
	iCursor = { fg = default.default.aqua },
	vCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },
	CursorColumn = { link = "CursorLine" },

	TextYankPost = { reverse = true },

	---Split
	VertSplit = { bg = "#1c1c1c", fg = "#fbf1c7" },

	---Folding
	Folded = { bg = "grey13", fg = "Grey40" },
	FoldColumn = { link = "Comment" },
	Conceal = { fg = default.blue },

	---Search
	IncSearch = { fg = "#3a3a3a", bg = default.green, bold = true },
	Search = { reverse = true },
	QuickFixLine = { reverse = true },

	---Debugging
	Debug = { fg = default.red },

	---StatusLine
	StatusLine = { fg = "#626262", bg = "#1c1c1c" },
	StatusLineNC = { fg = "#868686", bg = "#1c1c1c" },
	WinBar = { fg = "#6c6c6c", bg = "#1c1c1c", bold = false },
	WinBarNC = { fg = "#3c3c3c", bg = "#1c1c1c", italic = true },

	---Nvim Modes
	Nmode = { fg = "#158C8A" },
	Vmode = { fg = "Gold1" },
	Imode = { fg = "#00afff" },
	Cmode = { fg = "#af0000" },
	Tmode = { fg = "#FF5573" },
	ShellMode = { fg = "#ffff87" },

	---Syntax
	Title = { fg = "Gold1" },
	Statement = { fg = "#00ff87" },
	Directory = { fg = "#00af87" },

	String = { fg = "#FF7E80" },
	Number = { fg = "#00fff2" },
	Comment = { fg = "#626262" },
	Constant = { fg = "#D4FB79" },
	Boolean = { fg = "#FF5573" },
	Label = { fg = "#FF8AD8" },
	Conditional = { fg = "#00ff87" },
	Identifier = { fg = "#507d8b" },
	Include = { fg = "#ff0000" },
	Operator = { fg = "#00ff87" },
	Define = { fg = "#afaf00" },
	Type = { fg = "#008080" },
	Function = { fg = "#00afd7" },
	Structure = { fg = "#5faf00" },
	Keyword = { fg = "#00ff87" },
	Exception = { fg = "#af0000" },
	Repeat = { fg = "#00ff87" },
	Underlined = { underline = true },
	Question = { fg = "#00875f" },
	SpecialKey = { fg = "#ffafd7" },
	Special = { fg = "#D4FB79" },
	SpecialChar = { fg = "#FFF000" },
	Macro = { fg = "#ff54ad" },
	PreProc = { fg = "#d75f00" },
	PreCondit = { fg = "#875f5f" },
	Tag = { fg = "#569CD6" },
	Delimiter = { fg = "#aaaaaa" },
	SpecialComment = { fg = "#6C7986" },
	Todo = { bg = "#4FC1FF" },
	Character = { fg = "#acacac" },
	Float = { fg = "#00ccaa" },
	StorageClass = { fg = "#ffaf16" },
	Typedef = { fg = "#009090" },

	---Font enhance
	Bold = { bold = true },
	Italic = { italic = true },

	---End of buffer and non-text
	NonText = { fg = "#626262", bg = "#1c1c1c" },
	EndOfBuffer = { fg = "#1c1c1c", bg = "#1c1c1c" },

	Ignore = { fg = "#5f5faf", bold = true },
	MatchParen = { fg = "#09ddd0" },

	---Menu
	WildMenu = { fg = "#161616", bg = "#808000" },

	---Diff
	DiffAdd = { fg = "#014fff" },
	DiffChange = { bg = "#2c2c2c" },
	DiffDelete = { fg = "#ff8080" },
	DiffText = { fg = "gold" },
	-- diffAdded = { fg = default.green },
	-- diffRemoved = { fg = default.red },
	-- diffChanged = { fg = default.aqua },
	-- diffFile = { fg = orange },
	-- diffNewFile = { fg = default.yellow },
	-- diffLine = { fg = default.blue },

	SignColumn = { fg = "#626262", bg = "#1c1c1c" },

	---Errors
	Error = { fg = "#DC2626", underline = true },
	ErrorMsg = { fg = "#DC2626" },
	SpellErrors = { fg = "#ff005f", undercurl = true },
	WarningMsg = { fg = "#ff5f00" },

	---Popup Menu
	Pmenu = { fg = "#A1A1A1", bg = "#202020" },
	PmenuSel = { fg = "#F1F1F1", bg = "#015A60" },
	PmenuSbar = { bg = "#262626" },
	PmenuThumb = { bg = "NONE" },
	PmenuMatch = { fg = "#40CC7C" },
	PmenuMatchSel = { fg = default.yellow },

	---Snippet
	SnippetTabstop = { italic = true, underline = true },

	---Spell
	SpellRare = { fg = default.purple, underline = true },
	SpellBad = { fg = default.red, underline = true },
	SpellLocal = { fg = default.aqua, underline = true },
	SpellCap = vim.g.k_theme_improved_warnings and {
		fg = default.green,
		bold = true,
		italic = true,
	} or { fg = default.blue, underline = true },

	---signature
	SignatureMarkText = { fg = default.blue },
	SignatureMarkerText = { fg = default.purple },

	---gitcommit
	gitcommitSelectedFile = { fg = default.green },
	gitcommitDiscardedFile = { fg = default.red },

	---checkhealth
	healthError = { bg = "#1c1c1c", fg = default.red },
	healthSuccess = { bg = "#1c1c1c", fg = default.green },
	healthWarning = { bg = "#1c1c1c", fg = default.yellow },

	---Diagnostic
	DiagnosticError = { fg = "#f44747" },
	DiagnosticInfo = { fg = "#00ffaa" },
	DiagnosticWarn = { fg = "#ff8800" },
	DiagnosticWarning = { fg = "#ff8800" },
	DiagnosticInformation = { fg = "#ffcc66" },
	DiagnosticHint = { fg = "#4fc1ff" },
	DiagnosticSignError = { fg = "#f44747" },
	DiagnosticSignWarning = { fg = "#ff8800" },
	DiagnosticSignInformation = { fg = "#ffcc66" },
	DiagnosticSignHint = { fg = "#4fc1ff" },
	DiagnosticVirtualTextError = { fg = "#f44747" },
	DiagnosticVirtualTextWarning = { fg = "#ff8800" },
	DiagnosticVirtualTextInformation = { fg = "#ffcc66" },
	DiagnosticVirtualTextWarn = { link = "DiagnosticWarning" },
	DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
	DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
	DiagnosticSignInfo = { link = "DiagnosticInfo" },
	DiagnosticSignWarn = { link = "DiagnosticWarn" },
	DiagnosticSignOther = { link = "DiagnosticOther" },
	DiagnosticFloatingHint = { link = "DiagnosticHint" },
	DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
	DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
	DiagnosticFloatingError = { link = "DiagnosticError" },
	DiagnosticUnderlineHint = { fg = "NONE", bg = "NONE", sp = "#ff8800", undercurl = true },
	DiagnosticUnderlineInfo = { fg = "NONE", bg = "NONE", sp = "#ff8800", undercurl = true },
	DiagnosticUnderlineWarn = { fg = "NONE", bg = "NONE", sp = "#ff8800", undercurl = true },
	DiagnosticUnderlineError = { fg = "NONE", bg = "NONE", sp = "#f44747", undercurl = true },

	---LSP
	---@url https://github.com/neovim/nvim-lspconfig
	LspCodeLens = { fg = "#6D7986" },
	LspReferenceText = { bg = "#3c3c3c" },
	LspCodeLensSeparator = { link = "@comment" },
	LspReferenceWrite = { fg = "#F1F1F1", bg = "#015A60" },
	LspReferenceRead = { bg = "#3c3c3c" },

	LspInfoFiletype = { link = "Type" },
	LspInfoTitle = { fg = "Gold1", bold = true },
	LspInfoList = { link = "Function" },
	LspInfoBorder = { fg = "#3D3D40" },
	LspInfoTip = { link = "Comment" },
	LspDiagnosticsError = { fg = "#f44747", bg = "NONE" },
	LspDiagnosticsWarning = { fg = "#ff8800", bg = "NONE" },
	LspDiagnosticsInfo = { fg = "#ff8800", bg = "NONE" },
	LspDiagnosticsInformation = { link = "LspDiagnosticsInfo" },
	LspDiagnosticsHint = { fg = "#ff8800", bg = "NONE" },
	LspDiagnosticsDefaultError = { link = "LspDiagnosticsError" },
	LspDiagnosticsDefaultWarning = { link = "LspDiagnosticsWarning" },
	LspDiagnosticsDefaultInformation = { link = "LspDiagnosticsInfo" },
	LspDiagnosticsDefaultInfo = { link = "LspDiagnosticsInfo" },
	LspDiagnosticsDefaultHint = { link = "LspDiagnosticsHint" },
	LspDiagnosticsVirtualTextError = { link = "DiagnosticVirtualTextError" },
	LspDiagnosticsVirtualTextWarning = { link = "DiagnosticVirtualTextWarn" },
	LspDiagnosticsVirtualTextInformation = { link = "DiagnosticVirtualTextInfo" },
	LspDiagnosticsVirtualTextInfo = { link = "DiagnosticVirtualTextInfo" },
	LspDiagnosticsVirtualTextHint = { link = "DiagnosticVirtualTextHint" },
	LspDiagnosticsFloatingError = { link = "LspDiagnosticsError" },
	LspDiagnosticsFloatingWarning = { link = "LspDiagnosticsWarning" },
	LspDiagnosticsFloatingInformation = { link = "LspDiagnosticsInfo" },
	LspDiagnosticsFloatingInfo = { link = "LspDiagnosticsInfo" },
	LspDiagnosticsFloatingHint = { link = "LspDiagnosticsHint" },
	LspDiagnosticsSignError = { link = "LspDiagnosticsError" },
	LspDiagnosticsSignWarning = { link = "LspDiagnosticsWarning" },
	LspDiagnosticsSignInformation = { link = "LspDiagnosticsInfo" },
	LspDiagnosticsSignInfo = { link = "LspDiagnosticsInfo" },
	LspDiagnosticsSignHint = { link = "LspDiagnosticsHint" },
	LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },
	LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },
	LspDiagnosticsUnderlineInformation = { link = "DiagnosticUnderlineInfo" },
	LspDiagnosticsUnderlineInfo = { link = "DiagnosticUnderlineInfo" },
	LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },

	---Nvim-Cmp
	---@url https://github.com/hrsh7th/nvim-cmp
	CmpItemAbbr = { fg = "#DCDCDC" },
	CmpItemKind = { link = "Type" },
	CmpItemAbbrMatch = { fg = "#40CC7C" },
	CmpItemMenu = { link = "Special" },
	CmpItemAbbrDeprecated = { fg = "#7E8294", bg = "NONE", strikethrough = true },
	CmpItemAbbrMatchFuzzy = { link = "iCursor" },
	CmpItemKindClass = { link = "SpecialChar" },
	CmpItemKindConstructor = { link = "Label" },
	CmpItemKindField = { link = "Constant" },
	CmpItemKindFile = { link = "Directory" },
	CmpItemKindFolder = { link = "Directory" },
	CmpItemKindFunction = { link = "Function" },
	CmpItemKindMethod = { link = "Function" },
	CmpItemKindInterface = { link = "Identifier" },
	CmpItemKindKeyword = { link = "Keyword" },
	CmpItemKindSnippet = { link = "ShellMode" },
	CmpItemKindText = { link = "String" },
	CmpItemKindValue = { link = "Value" },
	CmpItemKindVariable = { link = "Type" },
	CmpItemKindProperty = { link = "Define" },
	CmpItemKindEvent = { link = "Ignore" },
	CmpItemKindEnum = { link = "Float" },
	CmpItemKindConstant = { link = "Constant" },
	CmpItemKindReference = { link = "Identifier" },
	CmpItemKindStruct = { link = "Structure" },
	CmpItemKindModule = { link = "Statement" },
	CmpItemKindOperator = { link = "Operator" },
	CmpItemKindUnit = { link = "Tag" },
	CmpItemKindEnumMember = { link = "Type" },
	CmpItemKindColor = { link = "Constant" },
	CmpItemKindTypeParameter = { link = "Type" },

	---Lazy (Package Manager)
	---@url https://github.com/folke/lazy.nvim
	LazyButton = { link = "CursorLine" },
	LazyButtonActive = { link = "Visual" },
	LazyComment = { link = "Comment" },
	LazyCommit = { link = "Special" },
	LazyCommitIssue = { link = "Number" },
	LazyCommitScope = { link = "Italic" },
	LazyCommitType = { link = "Title" },
	LazyDir = { link = "Directory" },
	LazyH1 = { link = "IncSearch" },
	LazyH2 = { link = "Bold" },
	LazyNoCond = { link = "DiagnosticWarn" },
	LazyNormal = { link = "NormalFloat" },
	LazyProgressDone = { link = "Constant" },
	LazyProgressTodo = { link = "LineNr" },
	LazyProp = { link = "Conceal" },
	LazyReasonCmd = { link = "Operator" },
	LazyReasonEvent = { link = "Constant" },
	LazyReasonFt = { link = "Comment" },
	LazyReasonKeys = { link = "Type" },
	LazyReasonPlugin = { link = "Special" },
	LazyReasonRuntime = { link = "@macro" },
	LazyReasonSource = { link = "Character" },
	LazyReasonStart = { link = "@field" },
	LazySpecial = { link = "@punctuation.special" },
	LazyTaskError = { link = "ErrorMsg" },
	LazyTaskOutput = { link = "MsgArea" },
	LazyUrl = { link = "@text.reference" },
	LazyValue = { link = "@string" },

	---Navic (winbar plugin)
	---@url https://github.com/SmiteshP/nvim-navic
	-- NavicText = { link = "Comment" },
	-- NavicSeparator = { link = "Comment" },
	-- NavicIconsFile = { link = "CmpItemKindFile" },
	-- NavicIconsModule = { link = "CmpItemKindClass" },
	-- NavicIconsNamespace = { link = "CmpItemKindClass" },
	-- NavicIconsPackage = { link = "CmpItemKindProperty" },
	-- NavicIconsClass = { link = "CmpItemKindClass" },
	-- NavicIconsMethod = { link = "CmpItemKindMethod" },
	-- NavicIconsProperty = { link = "CmpItemKindProperty" },
	-- NavicIconsField = { link = "CmpItemKindField" },
	-- NavicIconsConstructor = { link = "CmpItemKindConstructor" },
	-- NavicIconsEnum = { link = "CmpItemKindValue" },
	-- NavicIconsInterface = { link = "CmpItemKindInterface" },
	-- NavicIconsFunction = { link = "CmpItemKindFunction" },
	-- NavicIconsVariable = { default = true, link = "CmpItemKindVariable" },
	-- NavicIconsConstant = { link = "CmpItemKindVariable" },
	-- NavicIconsString = { link = "CmpItemKindText" },
	-- NavicIconsNumber = { link = "CmpItemKindValue" },
	-- NavicIconsBoolean = { link = "CmpItemKindValue" },
	-- NavicIconsArray = { link = "CmpItemKindVariable" },
	-- NavicIconsObject = { link = "CmpItemKindVariable" },
	-- NavicIconsKey = { link = "CmpItemKindKeyword" },
	-- NavicIconsNull = { link = "TSNone" },
	-- NavicIconsEnumMember = { link = "CmpItemKindVariable" },
	-- NavicIconsStruct = { link = "CmpItemKindStruct" },
	-- NavicIconsEvent = { link = "CmpItemKindEvent" },
	-- NavicIconsOperator = { link = "CmpItemKindOperator" },
	-- NavicIconsTypeParameter = { link = "CmpItemKindTypeParameter" },
	-- NavicIconsText = { link = "CmpItemKindText" },

	---Noice
	---@url https://github.com/folke/noice.nvim
	NoiceCmdline = { link = "MsgArea" },
	NoiceCmdlineIcon = { link = "DiagnosticSignInfo" },
	NoiceCmdlineIconSearch = { link = "DiagnosticSignWarn" },
	NoiceCmdlinePopup = { link = "Normal" },
	NoiceCmdlinePopupBorder = { link = "DiagnosticSignInfo" },
	NoiceCmdlinePopupSearchBorder = { link = "DiagnosticSignWarn" },
	NoiceConfirm = { link = "Normal" },
	NoiceConfirmBorder = { link = "DiagnosticSignInfo" },
	NoiceCursor = { link = "Cursor" },
	NoiceFormatConfirm = { link = "CursorLine" },
	NoiceFormatConfirmDefault = { link = "Visual" },
	NoiceFormatDate = { link = "Special" },
	NoiceFormatEvent = { link = "Special" },
	NoiceFormatKind = { link = "Special" },
	NoiceFormatLevelDebug = { link = "SpecialKey" },
	NoiceFormatLevelError = { link = "DiagnosticVirtualTextError" },
	NoiceFormatLevelInfo = { link = "DiagnosticVirtualTextInfo" },
	NoiceFormatLevelOff = { link = "NonText" },
	NoiceFormatLevelTrace = { link = "NonText" },
	NoiceFormatLevelWarn = { link = "DiagnosticVirtualTextWarn" },
	NoiceFormatProgressDone = { link = "Search" },
	NoiceFormatProgressTodo = { link = "Comment" },
	NoiceFormatTitle = { link = "Title" },
	NoiceLspProgressClient = { link = "Special" },
	NoiceLspProgressSpinner = { link = "Constant" },
	NoiceLspProgressTitle = { link = "Comment" },
	NoiceMini = { link = "MsgArea" },
	NoicePopup = { link = "NormalFloat" },
	NoicePopupBorder = { link = "FloatBorder" },
	NoicePopupmenu = { link = "Pmenu" },
	NoicePopupmenuBorder = { link = "FloatBorder" },
	NoicePopupmenuMatch = { link = "Special" },
	NoicePopupmenuSelected = { link = "PmenuSel" },
	NoiceScrollbar = { link = "PmenuSbar" },
	NoiceScrollbarThumb = { link = "PmenuThumb" },
	NoiceSplit = { link = "NormalFloat" },
	NoiceSplitBorder = { link = "FloatBorder" },
	NoiceVirtualText = { link = "DiagnosticVirtualTextInfo" },

	---Telescope
	---@url https://github.com/nvim-telescope/telescope.lua
	TelescopeSelection = { link = "PmenuSel" },
	TelescopeSelectionCaret = { fg = "#015A60" },
	TelescopeMultiSelection = { fg = default.orange },
	TelescopeNormal = { link = "NormalFloat" },
	TelescopeBorder = { fg = "#dcdcdc", bold = true },
	TelescopePromptBorder = { fg = "#04868e" },
	TelescopeResultsBorder = { link = "WinSeparator" },
	TelescopePreviewBorder = { link = "WinSeparator" },
	TelescopeMatching = { fg = default.orange, bold = true },
	TelescopePromptPrefix = { fg = "#4c4c4c" },
	TelescopePrompt = { link = "TelescopeNormal" },
	TelescopeResultsDiffAdd = { link = "DiffAdd" },
	TelescopeResultsDiffChange = { link = "DiffChange" },
	TelescopeResultsDiffDelete = { link = "DiffDelete" },
	TelescopeResultsDiffUntracked = { link = "Ignore" },

	---TreeSitter
	---@url https://github.com/nvim-treesitter/nvim-treesitter
	["@none"] = { default = true },
	["@error"] = {},
	["@text"] = { default = true },
	["@text.title"] = { link = "Title" },
	["@text.literal"] = { link = "String" },
	["@text.math"] = { link = "String" },
	["@text.reference"] = { link = "Define" },
	["@text.environment"] = { link = "Typedef" },
	["@text.environment.name"] = { link = "Type" },
	["@text.uri"] = { fg = "#00fff2" },
	["@text.strong"] = { bold = true },
	["@text.emphasis"] = { italic = true },
	["@text.underline"] = { underline = true },
	["@text.todo"] = { fg = "#1c1c1c", bg = "#4FC1FF" },
	["@text.note"] = { fg = "#1c1c1c", bg = "#ffcc66" },
	["@text.warning"] = { fg = "#1c1c1c", bg = "#ff8800" },
	["@text.danger"] = { fg = "#1c1c1c", bg = "#f44747" },
	["@comment.todo.comment"] = { link = "@text.todo" },
	["@comment.note.comment"] = { link = "@text.note" },
	["@comment.warning.comment"] = { link = "@text.warning" },
	["@comment.error.comment"] = { link = "@text.danger" },
	["@variable"] = { fg = "#2d5d79" },
	["@punctuation.delimiter"] = { link = "Delimiter" },
	["@punctuation.bracket"] = { link = "Delimiter" },
	["@punctuation.special"] = { link = "Delimiter" },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { link = "Special" },
	["@constant.macro"] = { link = "Define" },
	["@string"] = { link = "String" },
	["@string.regex"] = { link = "SpellRare" },
	["@string.escape"] = { fg = "#ff005f" },
	["@string.special"] = { link = "SpecialChar" },
	["@character"] = { link = "Character" },
	["@number"] = { link = "Number" },
	["@boolean"] = { link = "Boolean" },
	["@float"] = { link = "Float" },
	["@function"] = { link = "Function" },
	["@function.builtin"] = { link = "Special" },
	["@function.macro"] = { link = "Macro" },
	["@parameter"] = { link = "Identifier" },
	["@parameter.reference"] = { link = "Identifier" },
	["@method"] = { link = "Function" },
	["@field"] = { link = "Identifier" },
	["@property"] = { link = "Identifier" },
	["@constructor"] = { link = "Special" },
	["@annotation"] = { link = "PreProc" },
	["@attribute"] = { link = "PreProc" },
	["@namespace"] = { link = "Include" },
	["@conditional"] = { link = "Conditional" },
	["@repeat"] = { link = "Repeat" },
	["@label"] = { link = "Label" },
	["@operator"] = { link = "Operator" },
	["@keyword"] = { link = "Keyword" },
	["@keyword.function"] = { link = "Keyword" },
	["@keyword.operator"] = { link = "Operator" },
	["@exception"] = { link = "Exception" },
	["@type"] = { link = "Type" },
	["@type.builtin"] = { link = "Type" },
	["@include"] = { link = "Include" },
	["@variable.builtin"] = { fg = "#3d6d99" },
	["@comment"] = { link = "Comment" },
	["@structure"] = { link = "Gold1" },
	["@tag"] = { link = "Tag" },
	["@tag.delimiter"] = { link = "Delimiter" },
	["@tag.attribute"] = { link = "PreProc" },
	["@lsp.type.comment"] = { link = "Comment" },
	["@lsp.type.enum"] = { link = "Type" },
	["@lsp.type.interface"] = { link = "Identifier" },
	["@lsp.type.keyword"] = { link = "Keyword" },
	["@lsp.type.namespace"] = { link = "@namespace" },
	["@lsp.type.parameter"] = { link = "@parameter" },
	["@lsp.type.property"] = { link = "@property" },
	["@lsp.type.variable"] = { link = "@variable" },
	["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
	["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
	["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
	["@lsp.typemod.operator.injected"] = { link = "@operator" },
	["@lsp.typemod.string.injected"] = { link = "@string" },
	["@lsp.typemod.variable.injected"] = { link = "@variable" },

	["@codeSpan"] = { bg = "#3c3c3c", fg = "#DCDCDC" },
	["@codeBlock"] = {},
	["@todo"] = { link = "Todo" },
	-- ["@spell"] = { underline = true },

	---WhichKey
	---@url https://github.com/folke/which-key.nvim
	WhichKey = { link = "Function" },
	WhichKeyGroup = { link = "Type" },
	WhichKeySeparator = { link = "DiffAdded" },
	WhichKeyDesc = { link = "Identifier" },
	WhichKeyFloat = { bg = "#1c1c1c" },
	WhichKeyBorder = { link = "FloatBorder" },
	WhichKeyValue = { link = "Comment" },
}
