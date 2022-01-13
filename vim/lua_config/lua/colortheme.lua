
-- NerdTree
local keymap = vim.api.nvim_set_keymap
keymap('n', '<Tab>t', ':NERDTreeToggle<CR>',{})

-- colorscheme
vim.cmd [[
  colorscheme gruvbox
]]
