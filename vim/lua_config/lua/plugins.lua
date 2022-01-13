return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- 美化
  use 'morhetz/gruvbox'
  use 'vim-airline/vim-airline'
  use 'ryanoasis/vim-devicons'
  use 'luochen1990/rainbow'

  -- 功能性插件
  use 'preservim/nerdtree'
  use 'mbbill/undotree'
  use 'preservim/tagbar'

  -- 代码工具
  use 'neoclide/coc.nvim'
  use 'honza/vim-snippets'
  use 'SirVer/ultisnips'

end)
