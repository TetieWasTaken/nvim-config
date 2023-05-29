-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lua/plenary.nvim'
 
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use 'nvim-lualine/lualine.nvim'

  use 'folke/which-key.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

  use 'goolord/alpha-nvim'

  -- auto pairs
  use 'windwp/nvim-autopairs'

  use { "catppuccin/nvim", as = "catppuccin" }

  -- treesitter - syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- completion
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-buffer"
        use 'hrsh7th/cmp-nvim-lsp-signature-help'

        -- lsp
        use 'neovim/nvim-lspconfig'
        
	-- completion sources
      use 'hrsh7th/cmp-nvim-lua'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/cmp-calc'

        -- snippets
        use 'l3mon4d3/luasnip'
        use 'saadparwaiz1/cmp_luasnip'
   use 'rafamadriz/friendly-snippets'

   -- prettier
   use 'jose-elias-alvarez/null-ls.nvim'
   use 'MunifTanjim/prettier.nvim'
end)
