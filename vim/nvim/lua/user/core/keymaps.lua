local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local function keybind_config()

  keymap('', '<Space>', '<Nop>',{})

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
  keymap('n', 'S', ':w<CR>', opts)
  -- 退出文件
  keymap('n', 'Q', ':q!<CR>', opts)

  -- 快速移动光标
  keymap('', 'H', '^' , opts)
  keymap('', 'L', '$' , opts)
  keymap('', 'J', '5j', opts)
  keymap('', 'K', '5k', opts)

  -- 取消高亮
  keymap('', '<Tab><CR>', ':nohlsearch<CR>',{ noremap = true })

  -- ESC 键位映射
  keymap('i', 'jk', '<esc>', opts)
  keymap('i', 'kj', '<esc>', opts)

  -- 向右分屏
  keymap('n', 'sl', ':set splitright<CR>:vsplit<CR>', opts)
  -- 向左分屏
  keymap('n', 'sh', ':set nosplitright<CR>:vsplit<CR>', opts)
  -- 向上分屏
  keymap('n', 'sk', ':set nosplitbelow<CR>:split<CR>', opts)
  -- 向下分屏
  keymap('n', 'sj', ':set splitbelow<CR>:split<CR>', opts)

  -- 向左跳转
  keymap('n', '<Tab>h', '<c-w>h', opts)
  -- 向右跳转
  keymap('n', '<Tab>l', '<c-w>l', opts)
  -- 向上跳转
  keymap('n', '<Tab>k', '<c-w>k', opts)
  -- 向下跳转
  keymap('n', '<Tab>j', '<c-w>j', opts)

-- Resize with arrows
  keymap("n", "<C-Up>", ":resize -1<CR>", opts)
  keymap("n", "<C-Down>", ":resize +1<CR>", opts)
  keymap("n", "<C-Left>", ":vertical resize -1<CR>", opts)
  keymap("n", "<C-Right>", ":vertical resize +1<CR>", opts)

  -- 新窗口
  keymap('n', '<Tab>n', ':tabe<CR>', opts)
  -- 下一个窗口
  keymap('n', '<Tab>=', ':+tabnext<CR>', opts)
  -- 上一个窗口
  keymap('n', '<Tab>-', ':-tabnext<CR>', opts)

  -- 代码格式化
  keymap('n', 'GGG', 'gg=G', opts)
end

keybind_config()
