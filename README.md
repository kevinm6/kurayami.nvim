# Knvim-theme for Neovim

---

> Support most of the plugins for Neovim

---

## 📄 Requirements

> Neovim >= 7.0

---

## 🏞️ Preview

![screenNvim1](https://user-images.githubusercontent.com/72861758/210419269-658f8659-9a7b-422b-b1cb-b6afcc67aa07.png)

![screenNvim2](https://user-images.githubusercontent.com/72861758/210419286-5784a479-729d-4e9a-8ccd-460704b28b9e.png)

---

## ⬇ Installation

[Lazy](https://github.com/wbthomason/packer.nvim)

```lua
  {
   "kevinm6/knvim-theme.nvim",
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
use 'kevinm6/knvim-theme.nvim'
```
---

> ⚙️ Configuration
> *this is my personal configuration, the one that appears in the preview*
>
> [Neovim Configuration](https://github.com/kevinm6/nvim)
