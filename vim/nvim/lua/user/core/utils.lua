local M = {}

M.SaveAndExit = function()
  -- Write all buffer first
  vim.api.nvim_command(":wa")
  -- quit all buffer
  vim.api.nvim_command(":qa")
end

return M
