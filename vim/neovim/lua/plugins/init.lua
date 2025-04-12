
local function plugins_init()
    require('plugins.packer')
    require('plugins.nvim-tree')
    require('plugins.lualine')
    require('plugins.nvim-treesitter')
    require('plugins.rainbow-delimiters')
    require('plugins.theme')

    require('plugins.toggleterm')
    require('plugins.cmp')
    require('plugins.lsp')
end

plugins_init()


