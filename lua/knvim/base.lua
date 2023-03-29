-------------------------------------
--  File         : base.lua
--  Description  : base colors palette for knvim colorscheme
--  Author       : Kevin
--  Last Modified: 30 Mar 2023, 18:59
-------------------------------------

local colors = require "knvim.colors"

-- options (dark mode by default)
local bg0 = colors.dark0
local bg1 = colors.dark1
local bg2 = colors.dark2
local bg3 = colors.dark3
local bg4 = colors.dark4

local fg0 = colors.light0
local fg1 = colors.light1
local fg2 = colors.light2
local fg3 = colors.light3
local fg4 = colors.light4

local red = colors.bright_red
local green = colors.bright_green
local yellow = colors.bright_yellow
local blue = colors.bright_blue
local purple = colors.bright_purple
local aqua = colors.bright_aqua
local orange = colors.bright_orange
local gray = colors.gray

local bg = vim.opt.background:get()
if bg == nil then
	bg = "dark"
	vim.o.background = bg
end

-- extending colors table with basic names for easy customization in g:k_theme_* options
colors.bg0 = bg0
colors.bg1 = bg1
colors.bg2 = bg2
colors.bg3 = bg3
colors.bg4 = bg4
colors.fg0 = fg0
colors.fg1 = fg1
colors.fg2 = fg2
colors.fg3 = fg3
colors.fg4 = fg4
colors.red = red
colors.green = green
colors.yellow = yellow
colors.blue = blue
colors.purple = purple
colors.aqua = aqua
colors.orange = orange

-- neovim terminal mode colors
vim.g.terminal_color_0 = bg0
vim.g.terminal_color_8 = gray
vim.g.terminal_color_1 = colors.neutral_red
vim.g.terminal_color_9 = red
vim.g.terminal_color_2 = colors.neutral_green
vim.g.terminal_color_10 = green
vim.g.terminal_color_3 = colors.neutral_yellow
vim.g.terminal_color_11 = yellow
vim.g.terminal_color_4 = colors.neutral_blue
vim.g.terminal_color_12 = blue
vim.g.terminal_color_5 = colors.neutral_purple
vim.g.terminal_color_13 = purple
vim.g.terminal_color_6 = colors.neutral_aqua
vim.g.terminal_color_14 = aqua
vim.g.terminal_color_7 = fg4
vim.g.terminal_color_15 = fg1

vim.g.colors_name = "k_theme"

local base_group = {

	-- Modes
	Normal = { fg = "#D0D0D0", bg = bg0 },
	Visual = { reverse = true },
	-- Selection Not-Owned by Vim
	VisualNOS = { fg = "#244E7A" },

	WinSeparator = { fg = "#3D3D40" },

	ModeMsg = {},
	MoreMsg = {},
	MsgArea = { fg = "#626262" },

	colorColumn = { bg = "#3c3c3c" },

	-- Cursor
	Cursor = { reverse = true },
	LineNr = { fg = "#626262", bg = bg0 },
	Cursorline = { bg = "grey15" },
	CursorLineNr = { fg = green, bold = true },
	lCursor = { fg = red },
	iCursor = { fg = aqua },
	vCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },
	CursorColumn = { link = "CursorLine" },

	TextYankPost = { reverse = true },

	-- Split
	VertSplit = { bg = bg0, fg = fg0 },

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
	StatusLineNC = { fg = "#868686"},
	StatusLineTerm = { fg = "#626262", bg = "#1c1c1c" },
	StatusLineTermNC = { fg = "#A9A9A9", bg = "#2c2c2c" },
	StatusLineMode = { fg = "#158C8A" },
	StatusLineGit = { fg = "#af8700", bg = "#2c2c2c" },
	StatusLineFileName = { fg = "#36FF5A", bg = "#2c2c2c" },
  StatusLineFileEncoding = { fg = "#86868B", bg = "#2c2c2c" },
  StatusLineFileType = { fg = "#158C8A", bg = "#2c2c2c" },
  StatusLineFileFormat = { fg = "#86868B", bg = "#2c2c2c" },
  StatusLineLocation = { fg = "#86868B", bg = "#2c2c2c" },
  StatusLineGpsDiagnostic = { fg = "#3c3c3c", bg = "#1c1c1c" },
  StatusLineEmptyspace = { fg = "#2c2c2c", bg = "#1c1c1c" },

	-- TabLine
	TabLineSel = { link = "Normal" },
	--[[ TabLineSel = { fg = "#606060", bg = "#303030" }, ]]
	TabLine = { fg = "#A9A9A9", bg = "#606060" },
	TabLine_modified_visible = { fg = "#00afff", bg = "#303030" },
	TabLine_modified_selected = { fg = "#A9A9A9", bg = "#303030" },
	TabLine_indicator_selected = { fg = "#A9A9A9", bg = "#303030" },
	TabLineFill = { fg = "#ff0000", bg = "#606060"  },

  -- Nvim Modes
	Nmode = { fg = "#158C8A" },
	Vmode = { fg = "Gold1" },
	Imode = { fg = "#00afff" },
	Cmode = { fg = "#af0000" },
	Tmode = { fg = "#FF5573" },
	ShellMode = { fg = "#ffff87" },

  -- Syntax
	Title = { fg = "Gold1" },
	Statement = { fg = "#00afff" },
	Directory = { fg = "#00af87" },

	String = { fg = "#FF7E80" },
	Number = { fg = "#00fff2" },
	Comment = { fg = "#626262" },
	Constant = { fg = "#D4FB79" },
	Boolean = { fg = "#FF5573" },
	Label = { fg = "#FF8AD8" },
	Conditional = { fg = "#00ff87" },
	Identifier = { fg = "#af5f5f" },
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
	NonText = { fg = "#626262", bg = bg0 },
	EndOfBuffer = { fg = bg0, bg = bg0 },

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

--  hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
--  hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
--  hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
--  hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2

	SignColumn = { fg = "#626262", bg = bg0 },

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
	healthError = { bg = bg0, fg = red },
	healthSuccess = { bg = bg0, fg = green },
	healthWarning = { bg = bg0, fg = yellow },
}

return base_group
