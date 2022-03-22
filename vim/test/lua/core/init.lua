
-- 设置编码
vim.g.encoding = 'utf-8'
vim.g.langmenu = 'zh_CN.UTF-8'

-- Leader keymap
vim.g.mapleader = ' '

-- Tab Settings
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.o.smarttab = true
vim.bo.expandtab = true
vim.o.smartindent = true

-- 显示行号
vim.opt.number = true
-- 行高亮
vim.opt.cursorline = true
-- 上下行数
vim.opt.scrolloff = 8
-- UI 颜色
vim.opt.termguicolors = true
-- 高亮搜索
vim.opt.incsearch = true
-- 智能大小写
vim.opt.ignorecase = true
-- 自动更新文件的更改
vim.opt.autoread = true
-- 显示命令
vim.opt.showcmd = true

-- 代码折叠格式
vim.g.foldmethord = 'manual'

-- 命令补全
vim.g.wilmenu = true

-- Python Host
vim.g.python_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/bin/python3'

-- Ruby Host
vim.g.ruby_host_prog = '~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'

-- 退格键返回上一行
vim.g.backspace = 'indent,eol,start'

-- 打开上次文件打开的位置
vim.cmd [[
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
vim.cmd [[ set whichwrap+=<,>,h,l ]]
