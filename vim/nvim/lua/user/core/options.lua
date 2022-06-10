local options_o = {
  smarttab = true,
  smartindent = true,
}

local options_g = {
  mapleader = ' ',                        -- Leader
  encoding = 'utf-8',                     -- 编码格式
  langmenu = 'zh_CN.UTF-8',               -- 目录语言
  foldmethord = 'indent',                 -- 代码折叠格式
  wilmenu = true,                         -- 命令补全
  backspace = 'indent,eol,start',         -- 退格键返回上一行

  -- 路径配置
  python_host_prog = '/usr/bin/python2',
  python3_host_prog = '/usr/bin/python3',
  ruby_host_prog = '~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host',
  node_host_prog = '/usr/bin/neovim-node-host',
}

local options_opt = {
  shiftwidth = 2,
  softtabstop = 2,                        -- tab为2
  expandtab = true,                       -- 把tab换成tab
  mouse = "",                             -- 禁用鼠标
  number = true,                          -- 显示行号
  numberwidth = 4,                        -- 行号宽度
  scrolloff = 8,                          -- 上下行数
  termguicolors = true,                   -- UI颜色
  incsearch = true,                       -- 高亮搜索
  ignorecase = true,                      -- 智能大小写
  autoread = true,                        -- 自动更新文件的更改
  showcmd = true,                         -- 显示命令
  showmode = false,                       -- 不用显示当前模式
  signcolumn = "yes",                     -- 左侧状态栏一直显示
}

--
-- 配置函数
--
local function options_config()
  -- vim.opt
  for k,v in pairs(options_opt) do
    vim.opt[k] = v
  end
  -- vim.o
  for k,v in pairs(options_o) do
    vim.o[k] = v
  end
  -- vim.g
  for k,v in pairs(options_g) do
    vim.g[k] = v
  end

  -- 打开上次文件打开的位置
  vim.cmd [[
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  ]]
  vim.opt.clipboard = "unnamedplus",              -- 允许nvim访问系统粘贴版
  vim.cmd [[ set fillchars=eob:\ ]]               -- 删除每行开头的～
  vim.cmd [[ set whichwrap+=<,>,h,l ]]
end

-- 调用配置函数
options_config()
