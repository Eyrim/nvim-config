# Eyrim's Neovim configuration

This is my hand-rolled neovim configuration:

Plugins are in [lua/plugins](https://github.com/Eyrim/nvim-config/tree/328ef10a04956c1b2d2e2057cc3ff85154ec0897/lua/plugins), while their configurations are in [after/plugin](https://github.com/Eyrim/nvim-config/tree/328ef10a04956c1b2d2e2057cc3ff85154ec0897/after/plugin).

Included plugins are:
---
* [catppuccin/nvim](https://github.com/catppuccin/nvim)
* [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
* [saadparwaiz1/cmp_luasnip](https://github/com/saadparwaiz1/cmp_luasnip)
* [rafamadriz/friendly-snippets](https://github/com/rafamadriz/friendly-snippets)
* [hrsh7th/cmp-nvim-lsp](https://github/com/hrsh7th/cmp-nvim-lsp)
* [hrsh7th/cmp-nvim-lsp-signature-help](https://github/com/hrsh7th/cmp-nvim-lsp-signature-help)
* [nvim-java/nvim-java](https://github/com/nvim-java/nvim-java)
* [neovim/nvim-lspconfig](https://github/com/neovim/nvim-lspconfig)
* [nvim-lualine/lualine.nvim](https://github/com/nvim-lualine/lualine.nvim)
* [nvim-neo-tree/neo-tree.nvim](https://github/com/nvim-neo-tree/neo-tree.nvim)
* [nvimtools/none-ls.nvim](https://github/com/nvimtools/none-ls.nvim)
* [nvim-telescope/telescope.nvim](https://github/com/nvim-telescope/telescope.nvim)
* [nvim-telescope/telescope-ui-select.nvim](https://github/com/nvim-telescope/telescope-ui-select.nvim)
* [nvim-treesitter/nvim-treesitter](https://github/com/nvim-treesitter/nvim-treesitter)
* [folke/trouble.nvim](https://github/com/folke/trouble.nvim)
* [pmizio/typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim)

This configuration is kind of intended to be used with my [nix-os config](https://github.com/Eyrim/nixos-config) due to the LSP configuration being done manually with [the nvim-lspconfig list](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md).

If not using my nix-os config, you'll need to manually install the language servers in `after/plugin/lsp.lua`

