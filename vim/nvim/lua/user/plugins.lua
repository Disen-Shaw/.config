--
-- Plugins
--
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- 美化
  use { 'nvim-lualine/lualine.nvim' }         -- Status Bar
  use { 'kyazdani42/nvim-web-devicons' }      -- Icons
  use { 'nvim-treesitter/nvim-treesitter' }   -- Highlight Code
  use { 'p00f/nvim-ts-rainbow' }              -- Rainbow

  -- 主题
  use { 'folke/tokyonight.nvim' }             -- tokyonight
  use { 'Mofiqul/vscode.nvim' }               -- vscode
  use { 'sainnhe/gruvbox-material' }

  -- 功能性插件
  use { 'mbbill/undotree'}                    -- Undo
  use { 'kyazdani42/nvim-tree.lua' }          -- File Tree
  use { 'nvim-telescope/telescope.nvim' }     -- File Finder
  use { 'rrethy/vim-hexokinase' }             -- Show Color Code
  use { 'nvim-lua/plenary.nvim' }
  use { 'kdheepak/lazygit.nvim' }             -- Lazygit
  use { 'vim-scripts/DoxygenToolkit.vim' }    -- Doxygen
  use { 'numToStr/Comment.nvim' }             -- Comment
  use { 'Chiel92/vim-autoformat' }            -- Auto Format
  use { 'akinsho/toggleterm.nvim' }           -- Terminal
  use { 'preservim/tagbar' }                  -- Tags

  -- Markdown
  use { 'iamcco/markdown-preview.nvim', 'dhruvasagar/vim-table-mode' }

  -- cmp
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'saadparwaiz1/cmp_luasnip' }

  -- Snippet
  use { 'L3MON4D3/LuaSnip' }                  -- Snippets Engine
  use { 'rafamadriz/friendly-snippets' }

  -- LSP
  use { 'neovim/nvim-lspconfig' }
  use { "williamboman/mason.nvim" }   
  use { "williamboman/mason-lspconfig.nvim" }
  use { "jose-elias-alvarez/null-ls.nvim" }   
  use { "RRethy/vim-illuminate" }

  -- Debug
  use { 'sakhnik/nvim-gdb' }

end)
