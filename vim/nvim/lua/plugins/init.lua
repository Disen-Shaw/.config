
local function plugins_init()

    -- Window beautification
    require('plugins.packer')
    require('plugins.nvim-tree')
    require('plugins.lualine')
    require('plugins.nvim-treesitter')
    require('plugins.rainbow-delimiters')
    require('plugins.theme')

    -- useful tools
    require('plugins.telescope')
    require('plugins.tagbar')
    require('plugins.toggleterm')

    -- cmp
    require('plugins.cmp')

    -- lsp
    require('plugins.lsp')

    -- Language
    require('plugins.markdown-preview')
end

plugins_init()


