-------------------------------------
-- File         : init.lua
-- Description  : knvim theme for Neovim
-- Author       : Kevin
-- Last Modified: 29 Dec 2022, 23:16
-------------------------------------

local M = {}

function M.setup()
  package.loaded["plugins.knvim"] = nil
  package.loaded["plugins.knvim.palette"] = nil
  package.loaded["plugins.knvim.config"] = nil

  local plugins = require "knvim.plugins"
  local langs = require "knvim.languages"
  local utils = require "knvim.utils"
  local base = require "knvim.base"

  local specs = { base, plugins, langs }
  local spec = utils.merge(specs)

  if vim.version().minor < 7 then
    vim.notify(
      "Neovim 0.7+ required for < knvim > theme",
      "Error",
      { title = "knvim colorscheme" }
    )
    return
  end

  -- resetting colors
  vim.cmd.hi "clear"
  if vim.fn.exists "syntax_on" then
    vim.cmd.syntax "reset"
  end

  -- Main Option
  vim.g.colors_name = "knvim"
  vim.opt.termguicolors = true

  utils.set_highlights(spec)
end

return M
