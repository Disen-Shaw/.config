
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local function tagbar_config()
    keymap('n', '<leader>ft', ':TagbarToggle<cr>', opts)
end

tagbar_config()

