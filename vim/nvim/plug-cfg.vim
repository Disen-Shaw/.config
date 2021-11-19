"
"                  ____  _               ___       _ _   
"                 |  _ \| |_   _  __ _  |_ _|_ __ (_) |_ 
"                 | |_) | | | | |/ _` |  | || '_ \| | __|
"                 |  __/| | |_| | (_| |  | || | | | | |_ 
"                 |_|   |_|\__,_|\__, | |___|_| |_|_|\__|
"                                |___/                   
"
"美化==================================================================
"如果要某个插件只对某种文件生效:在plug后面加上,'for':{'文件格式','vim-plug'}
"插件目录
call plug#begin('$HOME/.config/nvim/plugged')
"美化==================================================================
"主题
  Plug 'morhetz/gruvbox'
"装饰
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
	Plug 'itchyny/lightline.vim'
"缩进可视化
  Plug 'Yggdroot/indentLine'
"彩色括号
  Plug 'luochen1990/rainbow'
"历史记录(反悔用的)
  Plug 'mbbill/undotree'
"功能==================================================================
"文件树
  Plug 'preservim/nerdtree'
"自动补全
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
"代码段
  Plug 'honza/vim-snippets'
  Plug 'SirVer/ultisnips'
	Plug 'vim-scripts/DoxygenToolkit.vim'
"显示文件中的函数
  Plug 'preservim/tagbar'
"缓冲区(可以在文件之间跳转)
  Plug 'jlanzarotta/bufexplorer'
  Plug 'mg979/vim-xtabline'
"多光标
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"替换
  Plug 'tpope/vim-surround'
"文件类型支持==========================================================
"Markdown文件类型
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
 
"插件的配置文件==========================================================
"IndentLine
source $HOME/.config/nvim/plug-config/indentLine.vim
"coc插件的设置
source $HOME/.config/nvim/plug-config/coc.vim
"Tagbar设置
source $HOME/.config/nvim/plug-config/Tagbar.vim
"UndoTree
source $HOME/.config/nvim/plug-config/Undotree.vim
"代码段
source $HOME/.config/nvim/plug-config/vim-snippets.vim
"markdown_preview
source $HOME/.config/nvim/plug-config/markdown_preview.vim
"NERDTree
source $HOME/.config/nvim/plug-config/NerdTree.vim
"Doxygen
source $HOME/.config/nvim/plug-config/doxygen.vim
