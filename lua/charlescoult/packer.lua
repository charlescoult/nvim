
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.2',
      -- or , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
   }

   use {
      'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
   }

   use 'theprimeagen/harpoon'

   use 'mbbill/undotree'

   use 'tpope/vim-fugitive'

   -- github.com/VonHeikemen/lsp-zero.nvim
   use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},             -- Required
         {
            'williamboman/mason.nvim',
            run = function()
               pcall( vim.api.nvim_command, 'MasonUpdate' )
            end,
         },
         {'williamboman/mason-lspconfig.nvim'}, -- Optional

         -- Autocompletion
         {'hrsh7th/nvim-cmp'},     -- Required
         {'hrsh7th/cmp-nvim-lsp'}, -- Required
         {'L3MON4D3/LuaSnip'},     -- Required
      }
   }

   -- Colorscheme
   use {
      'rose-pine/neovim',
      as = 'rose-pine/neovim',
      config = function()
         vim.cmd( 'colorscheme rose-pine' )
      end
   }

   use {
      'airidaceae/pretty-in-pink-neovim',
      as = 'airidaceae/pretty-in-pink-neovim',
      config = function()
         vim.cmd( 'colorscheme airidaceae/pretty-in-pink-neovim' )
      end
   }

end)
