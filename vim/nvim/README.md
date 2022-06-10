# Nvim Config

## 说明

配置主要用于编写 `c/c++` 的代码，采用 `Neovim` 的 `nvim-lsp` 进行配置，
具有报错和智能提示补全的功能

## 插件

### 通用插件

+ 包管理插件
  + packer.nvim
+ 美化插件
  + Lualine -- 状态栏
  + nvim-web-devicons -- 图表
  + nvim-treesitter -- 代码高亮
  + nvim-ts-rainbow -- 括号颜色
+ 主题
  + tokyonight -- Tokyonight主题
  + vscode -- Vscode 主题
+ 其他功能插件
  + 文件处理
    + undotree -- 代码回溯
    + nvim-tree -- 文件树
    + telescope -- 文件查找
  + 代码处理
    + vim-hexokinase -- 显示颜色 `css之类的配置会在代码中显示颜色`
    + lazygit -- Git工具
    + Comment -- 注释代码工具
    + vim-autoformat -- 代码格式化
  + 窗口工具
    + toggleterm -- 终端工具
    + tagbar -- 显示tag

### 特殊代码插件

+ markdown-preview -- Markdown显示插件
+ vim-table-mode -- 表格插件

### 自动补全

+ nvim-cmp -- 自动补全插件
+ cmp-nvim-lua -- Lua nvim 配置的自动补全
+ cmp-buffer -- buffer 中的代码补全
+ cmp-path -- 路径自动补全
+ cmp-cmdline -- 命令行补全
+ cmp_luasnip -- 自带的代码段

### 代码段配置

+ LuaSnip -- Snippets Engine
+ friendly-snippets -- Snippet

### LSP

+ nvim-lspconfig -- LSP client
+ nvim-lsp-installer -- LSP installer
+ cmp-nvim-lsp -- 代码自动补全

### Debug

+ nvim-gdb -- GDB调试
