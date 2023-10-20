-------------------------------------
--  File         : languages.lua
--  Description  : language specific palette for knvim colorscheme
--  Author       : Kevin
--  Last Modified: 14 May 2023, 11:23
-------------------------------------

local base = require "knvim.base"

local M = {
	-- xml
	-- xmlTag = base.AquaBold,
	-- xmlEndTag = base.AquaBold,
	-- xmlTagName = base.Blue,
	-- xmlEqual = base.Blue,
	-- docbkKeyword = base.AquaBold,
	-- xmlDocTypeDecl = base.Gray,
	-- xmlDocTypeKeyword = base.Purple,
	-- xmlCdataStart = base.Gray,
	-- xmlCdataCdata = base.Purple,
	-- dtdFunction = base.Gray,
	-- dtdTagName = base.Purple,
	-- xmlAttrib = base.Orange,
	-- xmlProcessingDelim = base.Gray,
	-- dtdParamEntityPunct = base.Gray,
	-- dtdParamEntityDPunct = base.Gray,
	-- xmlAttribPunct = base.Gray,
	-- xmlEntity = base.Red,
	-- xmlEntityPunct = base.Red,

	-- objc
	objcTypeModifier = base.Red,
	objcDirective = base.k_themeBlue,

	-- markdown
	-- markdownItalic = { fg = base.fg3, italic = true },
	-- markdownBold = { fg = base.fg3, bold = true },
	-- markdownBoldItalic = {
	-- 	fg = base.fg3,
	-- 	bold = true,
	-- 	italic = true,
	-- },
	-- atx_h1_marker = base.Title,
	-- atx_h2_marker = base.Title,
	-- atx_h3_marker = base.Title,
	-- atx_h4_marker = base.Title,
	-- atx_h5_marker = base.Title,
	-- atx_h6_marker = base.Title,
	-- markdownH1 = base.Title,
	-- markdownH2 = base.Title,
	-- markdownH3 = base.Title,
	-- markdownH4 = base.Title,
	-- markdownH5 = base.Yellow,
	-- markdownH6 = base.Yellow,
	-- markdownCode = base.Aqua,
	-- markdownCodeBlock = base.Aqua,
	-- markdownCodeDelimiter = base.Aqua,
	-- markdownBlockquote = base.Gray,
	-- markdownListMarker = base.Gray,
	-- markdownOrderedListMarker = base.Gray,
	-- markdownRule = base.Gray,
	-- markdownHeadingRule = base.Gray,
	-- markdownUrlDelimiter = base.fg3,
	-- markdownLinkDelimiter = base.fg3,
	-- markdownLinkTextDelimiter = base.fg3,
	-- markdownHeadingDelimiter = base.Orange,
	-- markdownUrl = base.Purple,
	-- markdownUrlTitleDelimiter = base.Green,
	-- markdownLinkText = { fg = base.Gray, underline = true },
	-- markdownIdDeclaration = { link = "markdownLinkText" },

	-- html
	-- htmlTag = base.AquaBold,
	-- htmlEndTag = base.AquaBold,
	-- htmlTagName = base.Blue,
	-- htmlArg = base.Orange,
	-- htmlTagN = base.fg1,
	-- htmlSpecialTagName = base.Blue,
	-- htmlLink = { fg = colors.fg4, underline = vim.g.k_theme_underline },
	-- htmlSpecialChar = { link = "k_themeRed" },
	-- htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = vim.g.k_theme_bold },
	-- htmlBoldUnderline = {
	-- 	fg = colors.fg0,
	-- 	bg = colors.bg0,
	-- 	bold = vim.g.k_theme_bold,
	-- 	underline = vim.g.k_theme_underline,
	-- },
	-- htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = vim.g.k_theme_bold, italic = vim.g.k_theme_italic },
	-- htmlBoldUnderlineItalic = {
	-- 	fg = colors.fg0,
	-- 	bg = colors.bg0,
	-- 	bold = vim.g.k_theme_bold,
	-- 	italic = vim.g.k_theme_italic,
	-- 	underline = vim.g.k_theme_underline,
	-- },
	-- htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = vim.g.k_theme_underline },
	-- htmlUnderlineItalic = {
	-- 	fg = colors.fg0,
	-- 	bg = colors.bg0,
	-- 	italic = vim.g.k_theme_italic,
	-- 	underline = vim.g.k_theme_underline,
	-- },
	-- htmlItalic = { fg = colors.fg0, bg = colors.bg0, bold = vim.g.k_theme_italic },
}

return M
