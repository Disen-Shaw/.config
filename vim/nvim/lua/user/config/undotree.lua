local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local function undotree_config()
  keymap('n', '<Leader>ud', ':UndotreeToggle<CR>', opts)
end

undotree_config()
