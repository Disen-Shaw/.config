
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- 美化
  use 'vim-airline/vim-airline'
  use 'ryanoasis/vim-devicons'
  use 'ellisonleao/gruvbox.nvim'

  -- 功能性插件
  use { 'preservim/nerdtree' }
  use { 'mbbill/undotree'}
  use { 'kdheepak/lazygit.nvim'}
  use { 'preservim/tagbar'}
  use { 'sakhnik/nvim-gdb'}
  use { 'rrethy/vim-hexokinase'}
  use { 'vim-scripts/DoxygenToolkit.vim'}
  use { 'akinsho/toggleterm.nvim' }

  -- 注释插件
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  
  -- Markdown
  use {'iamcco/markdown-preview.nvim', 'dhruvasagar/vim-table-mode'}

  -- LSP
  use {'neoclide/coc.nvim'}
  use {'honza/vim-snippets', 'SirVer/ultisnips'}


end)

