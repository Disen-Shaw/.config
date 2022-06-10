
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


keymap('n', '<Leader><Leader>F', ':Telescope find_files<CR>', opts)
keymap('n', '<Leader><Leader>B', ':Telescope buffers<CR>', opts)

