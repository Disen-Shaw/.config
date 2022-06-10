local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local function lazygit_config()

  vim.g.lazygit_floating_window_winblend = 0          -- transparency of floating window
  vim.g.lazygit_floating_window_scaling_factor = 0.8  -- scaling factor for floating window
  vim.g.lazygit_floating_window_use_plenary = 0 
  vim.g.lazygit_use_neovim_remote = 1                 -- fallback to 0 if neovim-remote is not installed
  keymap('n', '<Leader>lg', ':LazyGit<CR>', opts)
end

lazygit_config()

