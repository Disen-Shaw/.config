local function plugins_config()

  -- Beauty
  require('user.config.treesitter')

  -- ColorScheme
  require('user.config.theme')

  -- File Manage
  require('user.config.undotree')
  require('user.config.nvim-tree')
  require('user.config.telecope')
  require('user.config.lazygit')

  -- Code
  require('user.config.comment')
  require('user.config.doxygentoolkit')
  require('user.config.cmp')

  -- Markdown
  require('user.config.markdown-preview')
  require('user.config.vim-table-mode')

  -- Debug
  require('user.config.nvim-gdb')

  -- Terminal
  require('user.config.toggleterm')
  require('user.config.tagbar')
end

plugins_config()
