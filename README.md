# Knvim-theme for Neovim

---

> Support most of the plugins for Neovim

---

##  Requirements

> Neovim >= 7.0


##  Installation

[Lazy](https://github.com/wbthomason/packer.nvim)

```lua
  {
   "kevinm6/knvim.nvim",
    lazy = false,          -- don't lazy load
    priority = 100,        -- give high priority to be loaded before others plugin
    config = function()
      local has_theme, knvim = pcall(require, "knvim")
      if not has_theme then print("Error loading theme < knvim >", knvim) end
 
      require "knvim".setup()
    end
  }
```

[Packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'kevinm6/knvim.nvim'
```

