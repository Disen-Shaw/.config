"
"                  ____  _               ___       _ _   
"                 |  _ \| |_   _  __ _  |_ _|_ __ (_) |_ 
"                 | |_) | | | | |/ _` |  | || '_ \| | __|
"                 |  __/| | |_| | (_| |  | || | | | | |_ 
"                 |_|   |_|\__,_|\__, | |___|_| |_|_|\__|
"                                |___/                   
"
call plug#begin('$HOME/.config/nvim/plugged')
"如果要某个插件只对某种文件生效:在plug后面加上,'for':{'文件格式','vim-plug'}'vim-plug' 
"美化==================================================================
"主题
	Plug 'morhetz/gruvbox'
"装饰
	Plug 'vim-airline/vim-airline'
	Plug 'ryanoasis/vim-devicons'
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
"代码注释
	Plug 'vim-scripts/DoxygenToolkit.vim', {'for': ['python','c','cpp','java']}
"显示文件中的函数bar
	Plug 'preservim/tagbar'
"缓冲区(可以在文件之间跳转)
	Plug 'jlanzarotta/bufexplorer'
"多光标
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"颜色显示
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"替换
	Plug 'tpope/vim-surround'
"Lazygit
	Plug 'kdheepak/lazygit.nvim'
"GDB
	Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }

"文件类型支持==========================================================
"Markdown文件类型
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'dhruvasagar/vim-table-mode', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'lervag/vimtex',{'for': ['tex','latex']}

call plug#end() 

"插件的配置文件==========================================================
"美化相关设置
source $HOME/.config/nvim/plug-config/Color_and_theme.vim
"coc 的设置
source $HOME/.config/nvim/plug-config/Coc_Setting.vim
"一些编程功能
source $HOME/.config/nvim/plug-config/Coding_Settings.vim
"语言脚本
source $HOME/.config/nvim/plug-config/Coding_Servers.vim

