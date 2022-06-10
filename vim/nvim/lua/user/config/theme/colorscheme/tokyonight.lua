local function tokyonight()

  vim.g.tokyonight_style = 'night'

  vim.g.tokyonight_terminal_colors = true             -- Config the color
  vim.g.tokyonight_lualine_bold = true                -- Lualine section headers bold

  vim.g.tokyonight_italic_keywords = false            -- keyworld Italic
  vim.g.tokyonight_italic_comments = true             -- Comment Italic
  vim.g.tokyonight_italic_variables = true            -- Variable Italic
  vim.g.tokyonight_italic_functions = true            -- Function Italic

  vim.g.tokyonight_hide_inactive_statusline = false
  vim.g.tokyonight_transparent = true                 -- if transparent
  vim.g.tokyonight_transparent_sidebar = true
  vim.g.tokyonight_dark_sidebar = false               -- sidebar daker
  vim.g.tokyonight_dark_float = false                 -- float window daker
  vim.g.tokyonight_day_brightness = 0.3
  -- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

  vim.cmd[[colorscheme tokyonight]]
end

tokyonight()
