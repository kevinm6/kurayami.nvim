-----------------------------------
--  File         : utils.lua
--  Description  : utilities funcs for colorscheme
--  Author       : Kevin
--  Last Modified: 20/04/2022 - 09:20
-----------------------------------

-- util functions
local M = {}
local hl = vim.api.nvim_set_hl

M.get_color_from_var = function(color, default, colors)
  if color == nil then return default end

  local c = colors[color]
  if c == nil then
    print(string.format("%s color could not be found, using default", color))
    return default
  end
  return c
end

M.merge = function(tbls)
  local source = {}
  for _, group in pairs(tbls) do
    for groupName, opts in pairs(group) do
      source[groupName] = opts
    end
  end

  return source
end

M.set_highlights = function(hls)
  for group, settings in pairs(hls) do
    hl(0, group, settings)
  end
end

return M
