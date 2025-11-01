# Kurayami Theme for Neovim

<!--toc:start-->
- [Kurayami Theme for Neovim](#kurayami-theme-for-neovim)
  - [📄 Requirements](#📄-requirements)
  - [🏞️ Preview](#🏞️-preview)
  - [⬇ Install](#install)
    - [Config](#config)
<!--toc:end-->

---

> Support most of the plugins for Neovim  
> All the syntax highglights is managed by [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)  
> (so there are no specific syntax highlights, only via ts-nodes)

---

## 📄 Requirements

> Neovim >= 0.9

---

## 🏞️ Preview

<img width="960" height="1049" alt="nvimScreen1" src="https://github.com/user-attachments/assets/d2da4e9a-147c-4167-b87b-2be4b3125304" />

<img width="960" height="1049" alt="nvimScreen2" src="https://github.com/user-attachments/assets/4abd2d38-ac47-4754-8ec7-8f5606150d38" />

---

## ⬇ Install

[Lazy](https://github.com/wbthomason/packer.nvim)

```lua
{
   "kevinm6/kurayami.nvim",
   event = "VimEnter",               -- load plugin on VimEnter or
   -- lazy = false,                  --   don't lazy load plugin
   priority = 1000,                  
   config = function()        
      vim.cmd.colorscheme('kurayami')   -- this is enough to initialize and load plugin
   end,
}
```

### Config

Example to set custom colors to override existing one or to add some missing.

```lua
   "kevinm6/kurayami.nvim",
   event = "VimEnter",               -- load plugin on VimEnter or
   -- lazy = false,                  --   don't lazy load plugin
   priority = 1000,                  
   ---Use this config to override some highlights
   config = function(_, opts)        
     ---override or add highlights passing table, same as `:h nvim_set_hl()`
     ---@usage
     opts.override = {
       Number = { fg = "#015a60", bg = "NONE", bold = true },
       -- HiGroup = { fg = "#HexCol", bg = "#HexCol" }
     }
     require("kurayami").setup(opts)
     vim.cmd.colorscheme('kurayami')
   end
}
```

---

> ⚙️ Config
> *this is my personal config, the one that appears in the preview*
>
> [Neovim Configuration](https://github.com/kevinm6/nvim)
