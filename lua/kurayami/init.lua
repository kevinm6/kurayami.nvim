-------------------------------------
-- File         : init.lua
-- Description  : kurayami theme for Neovim
-- Author       : Kevin
-- Last Modified: 01 Jan 2024, 16:33
-------------------------------------

---Set highlights using neovim API
---@param hls table highlights
local function set_highlights(hls)
  for group, settings in pairs(hls) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end


---Set terminal color
local function set_terminal_colors()
  -- neovim terminal mode colors
  vim.g.terminal_color_0  = "#1c1c1c" -- black
  vim.g.terminal_color_8  = "#626262" -- gray
  vim.g.terminal_color_1  = "#bf616a" -- red
  vim.g.terminal_color_9  = "#b2201f" -- bright-red
  vim.g.terminal_color_2  = "#00af87" -- green
  vim.g.terminal_color_10 = "#36f57a" -- bright-green
  vim.g.terminal_color_3  = "#cecb00" -- yellow
  vim.g.terminal_color_11 = "#fffd00" -- bright-yellow
  vim.g.terminal_color_4  = "#158C8A" -- blue
  vim.g.terminal_color_12 = "#1a8fff" -- bright-blue
  vim.g.terminal_color_5  = "#B48EAD" -- purple
  vim.g.terminal_color_13 = "#cb1ed1" -- bright-purple
  vim.g.terminal_color_6  = "#1a8fff" -- cyan
  vim.g.terminal_color_14 = "#14ffff" -- bright-cyan
  vim.g.terminal_color_7  = "#dcdcdc" -- white
  vim.g.terminal_color_15 = "#ffffff" -- bright-white
end


---Initialize & load plugin
local function _load()
  package.loaded["kurayami"] = nil
  package.loaded["kurayami.theme"] = nil

  if vim.version().minor < 9 then
    vim.notify(
      "Neovim 0.9+ required for < kurayami > theme",
      vim.log.levels.WARN,
      { title = "kurayami colorscheme" }
    )
    return
  end

  -- resetting colors
  vim.cmd.hi 'clear'
  if vim.fn.exists 'syntax_on' then
    vim.cmd.syntax 'reset'
  end

  -- Main Option
  vim.g.colors_name = 'kurayami'
  vim.opt.termguicolors = true
  local bg = vim.opt.background:get()
  if bg == nil then
    bg = "dark"
    vim.o.background = bg
  end
  local theme = require "kurayami.theme"
  set_highlights(theme)
  set_terminal_colors()
end


---Configure plugin using override table passed from user 
---@param opts table|nil
local function setup(opts)
  if opts ~= nil and next(opts) ~= nil then
    set_highlights(opts.override)
  end
end


M = {
  load = _load,
  setup = setup,
}


return M
