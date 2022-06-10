
local function markdown_preview()
  vim.g.mkdp_auto_start = 0
  vim.g.mkdp_auto_close = 1
  vim.g.mkdp_refresh_slow = 0
  vim.g.mkdp_command_for_global = 0
  vim.g.mkdp_open_to_the_world = 0
  vim.g.mkdp_open_ip = ''
  vim.g.mkdp_browser = 'qutebrowser'
  vim.g.mkdp_echo_preview_url = 0
  vim.g.mkdp_browserfunc = ''
  vim.g.mkdp_markdown_css = ''
  vim.g.mkdp_highlight_css = ''
  vim.g.mkdp_port = '12345'
  vim.g.mkdp_page_title = '「${name}」'
end
markdown_preview()
