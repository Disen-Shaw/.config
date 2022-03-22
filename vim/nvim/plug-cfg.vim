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
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow',{'for': ['c','cpp','python','sh','lua','html','css','json','java']}

"功能==================================================================

Plug 'mbbill/undotree'
Plug 'preservim/nerdtree' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'numToStr/Comment.nvim'
Plug 'preservim/tagbar'
Plug 'kdheepak/lazygit.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
" 代码段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" doxygen
Plug 'vim-scripts/DoxygenToolkit.vim', {'for': ['python','c','cpp','java']}
" 多光标
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" 颜色显示
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" 替换
Plug 'tpope/vim-surround'

"文件类型支持==========================================================

" Markdown 
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" LaTeX 
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

