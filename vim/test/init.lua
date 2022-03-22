

local  function configration()
  require('core.init')
  require('core.keymapping')
  require('packer_init')
  require('plugins.colortheme')
  require('plugins.functions')
  require('user.language')
  vim.cmd[[source ~/.config/nvim/lua/plugins/coc.vim]]
  vim.cmd[[source ~/.config/nvim/lua/user/do-something.vim]]
end

configration()
