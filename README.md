# Kurayami Theme for Neovim

<!--toc:start-->
- [Kurayami Theme for Neovim](#kurayami-theme-for-neovim)
  - [📄 Requirements](#📄-requirements)
  - [🏞️ Preview](#🏞️-preview)
  - [⬇ Installation](#installation)
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

![screenNvim1](https://user-images.githubusercontent.com/72861758/210419269-658f8659-9a7b-422b-b1cb-b6afcc67aa07.png)

![screenNvim2](https://user-images.githubusercontent.com/72861758/210419286-5784a479-729d-4e9a-8ccd-460704b28b9e.png)

---

## ⬇ Installation

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

   ---Use this config to override some highlights
   -- config = function(_, opts)        
      ---override highlights passing table
      ---@usage
      -- opts.override = {
      --  Number = { fg = "#015a60" }
      -- }
      -- require("kurayami").setup(opts)
   -- end
}
```

---

> ⚙️ Configuration
> *this is my personal configuration, the one that appears in the preview*
>
> [Neovim Configuration](https://github.com/kevinm6/nvim)
