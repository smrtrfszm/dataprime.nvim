# dataprime.nvim

dataprime.nvim brings Coralogix's dataprime language support to Neovim

## ✨ Features

- 🎨 Syntax Highlighting

## ⚡️ Requirements

- **Neovim**
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) _(optional)_

## 📦 Installation

Install the plugin with your package manager:

### lazy.nvim

```lua
{
  'smrtrfszm/dataprime.nvim',
  dependencies = {'nvim-treesitter/nvim-treesitter'},
  -- Optionally:
  -- dependencies = {'nvim-treesitter/nvim-treesitter', 'numToStr/Comment.nvim'},
  config = function (_, _)
    require('dataprime').setup()
  end,
}
```
