-------------------------------------
--  File         : languages.lua
--  Description  : language specific palette for knvim colorscheme
--  Author       : Kevin
--  Last Modified: 30 Dec 2022, 08:59
-------------------------------------

local base = require "knvim.base"
local utils = require "knvim.utils"
local colors = require "knvim.colors"

-- xml
local xml = {
  xmlTag = base.AquaBold,
  xmlEndTag = base.AquaBold,
  xmlTagName = base.Blue,
  xmlEqual = base.Blue,
  docbkKeyword = base.AquaBold,
  xmlDocTypeDecl = base.Gray,
  xmlDocTypeKeyword = base.Purple,
  xmlCdataStart = base.Gray,
  xmlCdataCdata = base.Purple,
  dtdFunction = base.Gray,
  dtdTagName = base.Purple,
  xmlAttrib = base.Orange,
  xmlProcessingDelim = base.Gray,
  dtdParamEntityPunct = base.Gray,
  dtdParamEntityDPunct = base.Gray,
  xmlAttribPunct = base.Gray,
  xmlEntity = base.Red,
  xmlEntityPunct = base.Red,
}

local purescript = {
  purescriptModuleKeyword = base.Aqua,
  purescriptModuleName = base.fg1,
  purescriptWhere = base.Aqua,
  purescriptDelimiter = base.fg4,
  purescriptType = base.fg1,
  purescriptImportKeyword = base.Aqua,
  purescriptHidingKeyword = base.Aqua,
  purescriptAsKeyword = base.Aqua,
  purescriptStructure = base.Aqua,
  purescriptOperator = base.Blue,
  purescriptTypeVar = base.fg1,
  purescriptConstructor = base.fg1,
  purescriptFunction = base.fg1,
  purescriptConditional = base.Orange,
  purescriptBacktick = base.Orange,
}

local coffeescript = {
  coffeeExtendedOp = base.fg3,
  coffeeSpecialOp = base.fg3,
  coffeeCurly = base.Orange,
  coffeeParen = base.fg3,
  coffeeBracket = base.Orange,
}

local objc = { objcTypeModifier = base.Red, objcDirective = base.k_themeBlue }

local moonscript = {
  moonSpecialOp = base.fg3,
  moonExtendedOp = base.fg3,
  moonFunction = base.fg3,
  moonObject = base.Yellow,
}

local elixir = {
  elixirDocString = base.Comment,
  elixirStringDelimiter = base.Green,
  elixirInterpolationDelimiter = base.Aqua,
  elixirModuleDeclaration = base.Yellow,
}

local markdown = {
  markdownItalic = { fg = base.fg3, italic = true },
  markdownBold = { fg = base.fg3, bold = true },
  markdownBoldItalic = {
    fg = base.fg3,
    bold = true,
    italic = true,
  },
  atx_h1_marker = base.Title,
  atx_h2_marker = base.Title,
  atx_h3_marker = base.Title,
  atx_h4_marker = base.Title,
  atx_h5_marker = base.Title,
  atx_h6_marker = base.Title,
  markdownH1 = base.Title,
  markdownH2 = base.Title,
  markdownH3 = base.Title,
  markdownH4 = base.Title,
  markdownH5 = base.Yellow,
  markdownH6 = base.Yellow,
  markdownCode = base.Aqua,
  markdownCodeBlock = base.Aqua,
  markdownCodeDelimiter = base.Aqua,
  markdownBlockquote = base.Gray,
  markdownListMarker = base.Gray,
  markdownOrderedListMarker = base.Gray,
  markdownRule = base.Gray,
  markdownHeadingRule = base.Gray,
  markdownUrlDelimiter = base.fg3,
  markdownLinkDelimiter = base.fg3,
  markdownLinkTextDelimiter = base.fg3,
  markdownHeadingDelimiter = base.Orange,
  markdownUrl = base.Purple,
  markdownUrlTitleDelimiter = base.Green,
  markdownLinkText = { fg = base.Gray, underline = true },
  markdownIdDeclaration = { link = "markdownLinkText" },
}

local haskell = {
  haskellType = base.Blue,
  haskellIdentifier = base.Aqua,
  haskellSeparator = base.fg4,
  haskellDelimiter = base.Orange,
  haskellOperators = base.Purple,
  haskellBacktick = base.Orange,
  haskellStatement = base.Purple,
  haskellConditional = base.Purple,
  haskellLet = base.Red,
  haskellDefault = base.Red,
  haskellWhere = base.Red,
  haskellBottom = base.RedBold,
  haskellImportKeywords = base.PurpleBold,
  haskellDeclKeyword = base.Orange,
  haskellDecl = base.Orange,
  haskellDeriving = base.Purple,
  haskellAssocType = base.Aqua,
  haskellNumber = base.Aqua,
  haskellPragma = base.RedBold,
  haskellTH = base.AquaBold,
  haskellForeignKeywords = base.Green,
  haskellKeyword = base.Red,
  haskellFloat = base.Aqua,
  haskellInfix = base.Purple,
  haskellQuote = base.GreenBold,
  haskellShebang = base.YellowBold,
  haskellLiquid = base.PurpleBold,
  haskellQuasiQuoted = base.BlueBold,
  haskellRecursiveDo = base.Purple,
  haskellQuotedType = base.Red,
  haskellPreProc = base.fg4,
  haskellTypeRoles = base.RedBold,
  haskellTypeForall = base.Red,
  haskellPatternKeyword = base.Blue,
}

local html = {
  htmlTag = base.AquaBold,
  htmlEndTag = base.AquaBold,
  htmlTagName = base.Blue,
  htmlArg = base.Orange,
  htmlTagN = base.fg1,
  htmlSpecialTagName = base.Blue,
  htmlLink = { fg = colors.fg4, underline = vim.g.k_theme_underline },
  htmlSpecialChar = { link = "k_themeRed" },
  htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = vim.g.k_theme_bold },
  htmlBoldUnderline = {
    fg = colors.fg0,
    bg = colors.bg0,
    bold = vim.g.k_theme_bold,
    underline = vim.g.k_theme_underline,
  },
  htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = vim.g.k_theme_bold, italic = vim.g.k_theme_italic },
  htmlBoldUnderlineItalic = {
    fg = colors.fg0,
    bg = colors.bg0,
    bold = vim.g.k_theme_bold,
    italic = vim.g.k_theme_italic,
    underline = vim.g.k_theme_underline,
  },
  htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = vim.g.k_theme_underline },
  htmlUnderlineItalic = {
    fg = colors.fg0,
    bg = colors.bg0,
    italic = vim.g.k_theme_italic,
    underline = vim.g.k_theme_underline,
  },
  htmlItalic = { fg = colors.fg0, bg = colors.bg0, bold = vim.g.k_theme_italic },
}

local langs = utils.merge {
  xml,
  purescript,
  coffeescript,
  objc,
  moonscript,
  elixir,
  markdown,
  haskell,
  html,
}

return langs
