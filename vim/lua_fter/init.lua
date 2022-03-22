-- 
-- Init
--

-- Leader keymap
vim.g.mapleader = ' '

-- Tab Settings
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.o.smarttab = true
vim.bo.expandtab = true
vim.o.smartindent = true

-- 显示行号
vim.o.number = true

-- 上下显示行数
vim.o.cursorline = true
vim.o.scrolloff = 8

-- ui color
vim.o.termguicolors = true

-- Ignore case when searching
vim.o.incsearch = true

-- Smart case sensitive
vim.o.ignorecase = true

-- Auto Read
vim.o.autoread = true

-- 代码折叠
vim.g.foldmethod = 'manual'

-- 防止vi的某些老版本的某些设置影响操作
vim.g.nocompatible = true

-- 设置编码
vim.g.encoding = 'utf-8'
vim.g.langmenu = 'zh_CN.UTF-8'

-- 显示命令
vim.g.showcmd = true
-- 命令补全选择
vim.g.wilmenu = true

-- Python Host
vim.g.python_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/bin/python3'

-- Ruby Host
vim.g.ruby_host_prog = '~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'

-- 其他基本设置
vim.cmd [[
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  
  set wrap
  set backspace=indent,eol,start
  set whichwrap+=<,>,h,l
  
  set t_Co=256
  
  set encoding=utf-8
  set langmenu=zh_CN.UTF-8
  
  filetype on
  filetype indent on
  filetype plugin on
  filetype plugin indent on

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
  set noerrorbells visualbell t_vb=
  autocmd GUIEnter * set visualbell t_vb=

]]

require('plugins')
require('settings')
require('language')


