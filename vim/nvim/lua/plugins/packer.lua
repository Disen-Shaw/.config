
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
    --
    -- Window beautification
    --
    'folke/tokyonight.nvim',            -- Tokyonight color scheme
    'Mofiqul/vscode.nvim',              -- vscode color scheme
    'sainnhe/gruvbox-material',         -- gruvbox color scheme
    'nvim-lualine/lualine.nvim',        -- lualine 
    'nvim-tree/nvim-web-devicons',      -- devicons
    'nvim-treesitter/nvim-treesitter',  -- highlight for codes
    'HiPhish/rainbow-delimiters.nvim',  -- Rainbow

    -- 
    -- Useful tools
    --
    'nvim-tree/nvim-tree.lua',          -- Nvim-tree (file explorer)
    'akinsho/toggleterm.nvim',          -- Custom Terminal
    -- Telescope
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'BurntSushi/ripgrep',
    -- tagbar
    'preservim/tagbar',

    --
    -- cmp
    --
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',

    --
    -- Lsp
    --
    'mfussenegger/nvim-lint',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',

    -- Language
    'iamcco/markdown-preview.nvim',
}


