-------------------------------------
-- File         : init.lua
-- Description  : knvim theme for Neovim
-- Author       : Kevin
-- Last Modified: 14 May 2023, 12:23
-------------------------------------

local M = {}

function M.setup()
	package.loaded["knvim"] = nil
	package.loaded["knvim.palette"] = nil
	package.loaded["knvim.config"] = nil

   local utils = require "knvim.utils"
   local base = require "knvim.base"
	local langs = require "knvim.languages"
   local plugins = require "knvim.plugins"

	if vim.version().minor < 7 then
		vim.notify(
         "Neovim 0.7+ required for < knvim > theme",
         vim.log.levels.WARN,
         { title = "knvim colorscheme" }
      )
		return
	end

	-- resetting colors
	vim.cmd.hi("clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd.syntax("reset")
	end

	-- Main Option
	vim.g.colors_name = "knvim"
	vim.opt.termguicolors = true

	utils.set_highlights(base)
	utils.set_highlights(plugins)
	utils.set_highlights(langs)
end

return M
