
local keymap = vim.api.nvim_set_keymap

--[[
--------------------------------------
              键位映射
--------------------------------------
--]]

-- 取消一些快捷键
keymap('', 'c', '<Nop>',{})
keymap('', 's', '<Nop>',{})
keymap('', 'H', '<Nop>',{})
keymap('', 'K', '<Nop>',{})
keymap('', 'L', '<Nop>',{})
keymap('', 'J', '<Nop>',{})
--
keymap('', '<c-b>', '<Nop>',{})
keymap('', '<c-z>', '<Nop>',{})
keymap('', '<c-e>', '<Nop>',{})
--
keymap('', '<c-h>', '<Nop>',{})
keymap('', '<c-l>', '<Nop>',{})
keymap('', '<c-j>', '<Nop>',{})
keymap('', '<c-k>', '<Nop>',{})

-- 保存文件
keymap('n', 'S', ':w<CR>',{})
-- 退出文件
keymap('n', 'Q', ':q<CR>',{})

-- 快速移动光标
keymap('', 'H', '5h',{})
keymap('', 'L', '5l',{})
keymap('', 'J', '5j',{})
keymap('', 'K', '5k',{})

-- 取消高亮
keymap('', '<Tab><CR>', ':nohlsearch<CR>',{})

-- ESC 键位映射
keymap('i', 'jk', '<esc>',{ noremap = true, silent = true })
keymap('i', 'kj', '<esc>',{ noremap = true, silent = true })
keymap('i', 'jj', '<esc>',{ noremap = true, silent = true })

-- 向右分屏
keymap('n', 'sl', ':set splitright<CR>:vsplit<CR>',{})
-- 向左分屏
keymap('n', 'sh', ':set nosplitright<CR>:vsplit<CR>',{})
-- 向上分屏
keymap('n', 'sk', ':set nosplitbelow<CR>:split<CR>',{})
-- 向下分屏
keymap('n', 'sj', ':set splitbelow<CR>:split<CR>',{})

-- 向左跳转
keymap('n', '<Tab>h', '<c-w>h',{ silent = true })
-- 向右跳转
keymap('n', '<Tab>l', '<c-w>l',{ silent = true })
-- 向上跳转
keymap('n', '<Tab>k', '<c-w>k',{ silent = true })
-- 向下跳转
keymap('n', '<Tab>j', '<c-w>j',{ silent = true })

-- 状态栏向上一格
keymap('n', '<up>', ':res -1<CR>',{})
-- 状态栏向下一格
keymap('n', '<down>', ':res +1<CR>',{})
-- 窗口向左移动
keymap('n', '<left>', ':vertical resize+1<CR>',{})
-- 窗口向右移动
keymap('n', '<right>', ':vertical resize-1<CR>',{})

-- 新窗口
keymap('n', '<Tab>n', ':tabe<CR>',{})
-- 下一个窗口
keymap('n', '<Tab>=', ':+tabnext<CR>',{})
-- 上一个窗口
keymap('n', '<Tab>-', ':-tabnext<CR>',{})

-- 代码格式化
keymap('n', 'GGG', 'gg=G',{})


--[[
--------------------------------------
              插件设置
--------------------------------------
--]]

-- NerdTree
keymap('n', '<Tab>t', ':NERDTreeToggle<CR>',{})

-- Colortheme
vim.opt.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Airline
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = 'gruvbox'

-- Rainbow

-- Undotree
keymap('', '<Leader>ud', ':UndotreeToggle<CR>',{})
-- Tagbar
keymap('', '<F10>', ':TagbarToggle<CR>',{})
-- Lazygit
keymap('', '<Leader>lg', ':LazyGit<CR>',{})
-- vim gdb
keymap('', '<Leader>gdb', ':GdbStart',{})
