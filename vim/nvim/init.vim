"   
"    __  __               _                    
"   |  \/  |_   _  __   _(_)_ __ ___  _ __ ___ 
"   | |\/| | | | | \ \ / / | '_ ` _ \| '__/ __|
"   | |  | | |_| |  \ V /| | | | | | | | | (__ 
"   |_|  |_|\__, |   \_/ |_|_| |_| |_|_|  \___|
"           |___/                              
"   
"                                  _______________ 
"                                <  Author:邵笛笙  >
"                                  --------------- 
"                                         \   ^__^
"                                          \  (oo)\_______
"                                             (__)\       )\/\
"                                                 ||----w |
"                                                 ||     ||
"                                 
"=====================================================================
"说明:
"noremap:改键，重映射
"map:映射
"source 加载文件
"=====================================================================

"基本设置
let g:python_host_prog  = '/bin/python2'
let g:python3_host_prog  = '/bin/python3'
let g:clipboard = {
      \   'name': 'myClipboard',
      \   'copy': {
      \      '+': ['tmux', 'load-buffer', '-'],
      \      '*': ['tmux', 'load-buffer', '-'],
      \    },
      \   'paste': {
      \      '+': ['tmux', 'save-buffer', '-'],
      \      '*': ['tmux', 'save-buffer', '-'],
      \   },
      \   'cache_enabled': 1,
      \ }
"基础设置=============================================================
"开启高亮
syntax on

"代码折叠
set foldmethod=manual

"关闭鼠标
set mouse=

"防止vi的某些老版本的某些设置影响操作
set nocompatible

"vim可以识别文件类型
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"设置tab的格式
set tabstop=2

"设置自动对其格数为4
set shiftwidth=2

"设置退格键时可以删除4个空格
set smarttab
set softtabstop=2

"设置编码
set encoding=utf-8
set langmenu=zh_CN.UTF-8
"set ambiwidth=double "防止特殊符号无法正常显示
"开启行号
set number
""开启实时行号
"set relativenumber
"显示线
set cursorline
"自动换行
set wrap
"退格键自动换行
set whichwrap+=<,>,h,l 
"底层状态栏2
set laststatus=2
"显示命令
set showcmd
"命令补全选择
set wildmenu
"搜索高亮
set hlsearch
set incsearch
"搜索忽略大小写
set ignorecase
"智能大小写区分
set smartcase
"进入新文件去除高亮,刷新也可以去除高亮
exec "nohlsearch"
"出错时，发出视觉提示，通常是屏幕闪烁
set visualbell
"启用256色
set t_Co=256
"当文件在外部被修改时，自动重新读取
set autoread     
"行首按退格可以退回上一行
set backspace=indent,eol,start
"光标回到上次文件打开的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"键位映射=====================================================
"去除不常用的映射
map c <nop>
map H <nop> 
map J <nop> 
map K <nop> 
map L <nop> 

map <c-b> <nop>
map <c-z> <nop>
map <c-e> <nop>

map <c-h> <nop>
map <c-l> <nop>
map <c-j> <nop>
map <c-k> <nop>

"基本操作
map s <nop>
map S :w<CR>
map Q :q<CR>

map H 5h
map J 5j
map K 5k
map L 5l

"整理代码
map GGG gg=G


"刷新
map R :source $HOME/.config/nvim/init.vim<CR>
"去除高亮的快捷键
map <tab><CR> :nohlsearch<CR>
"映射jk为esc键
inoremap jk <esc>

"leader键
let mapleader=" "

"相关的执行命令
source $HOME/.config/nvim/do-something.vim

"分屏操作====================================================
"向右分屏
map sl :set splitright<CR>:vsplit<CR>
"向左分屏
map sh :set nosplitright<CR>:vsplit<CR>
"向上分屏
map sk :set nosplitbelow<CR>:split<CR>
"向下分屏
map sj :set splitbelow<CR>:split<CR>
"分屏向上跳转
map <tab>k <C-w>k
"分屏向下跳转
map <tab>j <C-w>j
"分屏向左跳转
map <tab>h <C-w>h
"分屏向右跳转
map <tab>l <C-w>l
"屏幕向上调整
map <up> :res -1<CR>
"屏幕向下调整
map <down> :res +1<CR>
"屏幕向左调整
map <left> :vertical resize+1<CR>
"屏幕向右调整
map <right> :vertical resize-1<CR>

"插件配置====================================================
source $HOME/.config/nvim/plug-cfg.vim
"界面设置====================================================
"主题
colorscheme gruvbox
let g:gruvbox_termcolors=16
set background=dark    "暗模式
"关闭屏闪
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
"上下栏的最小值
set scrolloff=6
"添加 cscope
"cs add cscope.out
