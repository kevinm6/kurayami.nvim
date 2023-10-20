-------------------------------------
-- File         : init.lua
-- Description  : knvim theme for Neovim
-- Author       : Kevin
-- Last Modified: 14 May 2023, 12:23
-------------------------------------

local M = {}


local function set_highlights(hls)
   for group, settings in pairs(hls) do
      vim.api.nvim_set_hl(0, group, settings)
   end
end

function M.setup()
	package.loaded["knvim"] = nil
	package.loaded["knvim.palette"] = nil
	package.loaded["knvim.config"] = nil

	if vim.version().minor < 7 then
		vim.notify(
         "Neovim 0.7+ required for < knvim > theme",
         vim.log.levels.WARN,
         { title = "knvim colorscheme" }
      )
		return
	end

	-- resetting colors
	vim.cmd.hi 'clear'
	if vim.fn.exists 'syntax_on' then
		vim.cmd.syntax 'reset'
	end

	-- Main Option
	vim.g.colors_name = 'knvim'
	vim.opt.termguicolors = true

   local base = require "knvim.base"
   local plugins = require "knvim.plugins"

	set_highlights(base)
	set_highlights(plugins)
end


M.get_color_from_var = function(color, default, colors)
   local c = colors[color]
   if not c then
      print(string.format("%s color could not be found, using default", color))
      return default
   end

   return c
end

-- M.merge = function(tbls)
--   local source = {}
--   for _, group in pairs(tbls) do
--     for groupName, opts in pairs(group) do
--       source[groupName] = opts
--     end
--   end
--   return source
-- end

return M
