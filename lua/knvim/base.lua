-------------------------------------
--  File         : base.lua
--  Description  : base colors palette for knvim colorscheme
--  Author       : Kevin
--  Last Modified: 08 Sep 2023, 18:36
-------------------------------------


local red = "#fb4934"
local green = "#36f57a"
local yellow = "#fabd2f"
local blue = "#83a598"
local purple = "#d3869b"
local aqua = "#8ec07c"
local orange = "#fe8019"

local bg = vim.opt.background:get()
if bg == nil then
	bg = "dark"
	vim.o.background = bg
end

-- neovim terminal mode colors
vim.g.terminal_color_0 = "#1c1c1c" -- black
vim.g.terminal_color_8 = "#626262" -- gray
vim.g.terminal_color_1 = "#bf616a" -- red
vim.g.terminal_color_9 = "#b2201f" -- bright-red
vim.g.terminal_color_2 = "#00af87" -- green
vim.g.terminal_color_10 = "#36f57a" -- bright-green
vim.g.terminal_color_3 = "#cecb00" -- yellow
vim.g.terminal_color_11 = "#fffd00" -- bright-yellow
vim.g.terminal_color_4 = "#158C8A" -- blue
vim.g.terminal_color_12 = "#1a8fff" -- bright-blue
vim.g.terminal_color_5 = "#B48EAD" -- purple
vim.g.terminal_color_13 = "#cb1ed1" -- bright-purple
vim.g.terminal_color_6 = "#1a8fff" -- cyan
vim.g.terminal_color_14 = "#14ffff" -- bright-cyan
vim.g.terminal_color_7 = "#dcdcdc" -- white
vim.g.terminal_color_15 = "#ffffff" -- bright-white

vim.g.colors_name = "k_theme"

local base_group = {
	-- Modes
	Normal = { fg = "#D0D0D0", bg = "#1c1c1c" },
	Visual = { reverse = true },
	-- Selection Not-Owned by Vim
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

	colorColumn = { bg = "#3c3c3c" },

	-- Cursor
	Cursor = { reverse = true },
	LineNr = { fg = "#626262", bg = "#1c1c1c" },
	Cursorline = { bg = "grey15" },
	CursorLineNr = { fg = green, bold = true },
	lCursor = { fg = red },
	iCursor = { fg = aqua },
	vCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },
	CursorColumn = { link = "CursorLine" },

	TextYankPost = { reverse = true },

	-- Split
	VertSplit = { bg = "#1c1c1c", fg = "#fbf1c7" },

	-- Folding
	Folded = { bg = "grey13", fg = "Grey40" },
	FoldColumn = { link = "Comment" },
	Conceal = { fg = blue },

	-- Search
	IncSearch = { fg = "#3a3a3a", bg = green, bold = true },
	Search = { reverse = true },
	QuickFixLine = { reverse = true },

	-- Debugging
	Debug = { fg = red },

	-- StatusLine
	StatusLine = { fg = "#626262", bg = "#1c1c1c" },
	StatusLineNC = { fg = "#868686" },

	-- Nvim Modes
	Nmode = { fg = "#158C8A" },
	Vmode = { fg = "Gold1" },
	Imode = { fg = "#00afff" },
	Cmode = { fg = "#af0000" },
	Tmode = { fg = "#FF5573" },
	ShellMode = { fg = "#ffff87" },

	-- Syntax
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
	Special = { fg = "#ffff87" },
	SpecialChar = { fg = "#FFF000" },
	Macro = { fg = "#ff54ad" },
	PreProc = { fg = "#d75f00" },
	PreCondit = { fg = "#875f5f" },
	Tag = { fg = "#569CD6" },
	Delimiter = { fg = "#d7d787" },
	SpecialComment = { fg = "#6C7986" },
	Todo = { bg = "#d7ff00", fg = "#ff5f00" },
	Character = { link = "k_themePurple" },
	Float = { link = "k_themePurple" },
	StorageClass = { link = "k_themeOrange" },
	Typedef = { link = "k_themeYellow" },

	-- Font enhance
	Bold = { bold = true },
	Italic = { italic = true },

	-- End of buffer and non-text
	NonText = { fg = "#626262", bg = "#1c1c1c" },
	EndOfBuffer = { fg = "#1c1c1c", bg = "#1c1c1c" },

	Ignore = { fg = "#5f5faf", bold = true },
	MatchParen = { fg = "#09ddd0" },

	-- Menu
	WildMenu = { fg = "#161616", bg = "#808000" },

	-- Diff
	DiffAdd = { fg = "#014fff" },
	DiffChange = { bg = "#2c2c2c" },
	DiffDelete = { fg = "#ff8080" },
	DiffText = { fg = "gold" },
	-- diffAdded = { fg = green },
	-- diffRemoved = { fg = red },
	-- diffChanged = { fg = aqua },
	-- diffFile = { fg = orange },
	-- diffNewFile = { fg = yellow },
	-- diffLine = { fg = blue },

	SignColumn = { fg = "#626262", bg = "#1c1c1c" },

	-- Errors
	Error = { fg = "#DC2626", underline = true },
	ErrorMsg = { fg = "#DC2626" },
	SpellErrors = { fg = "#ff005f", undercurl = true },
	WarningMsg = { fg = "#ff5f00" },

	-- Popup Menu
	Pmenu = { fg = "#A1A1A1", bg = "#303030" },
	PmenuSel = { fg = "#F1F1F1", bg = "#015A60" },
	PmenuSbar = { bg = "#262626" },
	PmenuThumb = { bg = "#3D3D40" },

	-- LSP
	LspCodeLens = { fg =  "#808080"},
	LspReferenceText = { bg = "#3c3c3c" },
	LspCodeLensSeparator = { link = "@comment" },
	LspReferenceWrite = { fg = "#F1F1F1", bg = "#015A60" },
	LspReferenceRead = { bg = "#3c3c3c" },

	LspInfoFiletype = { link = 'Type' },
	LspInfoTitle = { fg = "Gold1", bold = true },
	LspInfoList = { link = 'Function' },
	LspInfoBorder = { fg = "#3D3D40" },
	LspInfoTip = { link = 'Comment' },

	-- Spell
	SpellRare = { fg = purple, underline = true },
	SpellBad = { fg = red, underline = true },
	SpellLocal = { fg = aqua, underline = true },
	SpellCap = vim.g.k_theme_improved_warnings and {
		fg = green,
		bold = true,
		italic = true,
	} or { fg = blue, underline = true },

	-- signature
	SignatureMarkText = { link = "k_themeBlueSign" },
	SignatureMarkerText = { link = "k_themePurpleSign" },

	-- gitcommit
	gitcommitSelectedFile = { fg = green },
	gitcommitDiscardedFile = { fg = red },

	-- checkhealth
	healthError = { bg = "#1c1c1c", fg = red },
	healthSuccess = { bg = "#1c1c1c", fg = green },
	healthWarning = { bg = "#1c1c1c", fg = yellow },
}

return base_group
