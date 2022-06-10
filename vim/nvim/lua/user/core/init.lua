
local function core_config()
  require("user.core.options")
  require("user.core.keymaps")
  require("user.core.utils")
  vim.cmd [[ source ~/.config/nvim/lua/user/core/do-something.vim ]]

end
core_config()
