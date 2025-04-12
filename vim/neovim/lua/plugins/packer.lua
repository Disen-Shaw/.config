
--
-- Use https://github.com/lewis6991/pckr.nvim plugins
--

local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add
{
    -- Colorscheme
    'folke/tokyonight.nvim',
    'Mofiqul/vscode.nvim',
    'sainnhe/gruvbox-material',
    -- Icon 
    'nvim-tree/nvim-web-devicons',
    -- File explorer
    'nvim-tree/nvim-tree.lua',
    'nvim-lualine/lualine.nvim',
    -- Treesitter
    'nvim-treesitter/nvim-treesitter',
    -- Rainbow
    'HiPhish/rainbow-delimiters.nvim',
    -- terminal
    'akinsho/toggleterm.nvim',

    -- cmp
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',

    -- lsp
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-lint',
    'mhartington/formatter.nvim',
}




