--[[  
           _                             _           
          | |   _   _  __ _   _ ____   _(_)_ __ ___  
          | |  | | | |/ _` | | '_ \ \ / / | '_ ` _ \ 
          | |__| |_| | (_| | | | | \ V /| | | | | | |
          |_____\__,_|\__,_| |_| |_|\_/ |_|_| |_| |_|

    Author: Disen Shao
    Version: 1.0

 ]]--


--[[ 
------------------- Basic Settings -------------------
--]] 

-- Leader key map
vim.g.mapleader = ' '

-- Vim Tab Settings
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.o.smarttab = true
vim.bo.expandtab = true
vim.o.smartindent = true

-- Number
vim.o.number = true

-- Gui colors
vim.o.termguicolors = true
-- Cursor line
vim.o.cursorline = true
vim.o.scrolloff = 8

-- Ignore case when searching
vim.o.incsearch = true

-- Smart case sensitive
vim.o.ignorecase = true

-- Auto Read 
vim.o.autoread = true

-- Other vim cmd
vim.cmd [[ 

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set t_Co=256

set encoding=utf-8
set langmenu=zh_CN.UTF-8

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

let g:ruby_host_prog = '~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'
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

]]


--[[ 
------------------- Keybindings -------------------
  Mode: vim.api.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options})
--]] 

local keymap = vim.api.nvim_set_keymap
-- Disable some keys
keymap('n', 'c', '<nop>',{})
keymap('n', 's', '<nop>',{})
keymap('n', 'H', '<nop>',{})
keymap('n', 'K', '<nop>',{})
keymap('n', 'L', '<nop>',{})
keymap('n', 'J', '<nop>',{})
--
keymap('n', '<c-b>', '<nop>',{})
keymap('n', '<c-z>', '<nop>',{})
keymap('n', '<c-e>', '<nop>',{})
--
keymap('n', '<c-h>', '<nop>',{})
keymap('n', '<c-l>', '<nop>',{})
keymap('n', '<c-j>', '<nop>',{})
keymap('n', '<c-k>', '<nop>',{})
-- Save file
keymap('n', 'S', ':w<CR>',{})
-- Quit
keymap('n', 'Q', ':q<CR>',{})
-- Direction keys
keymap('n', 'H', '5h',{})
keymap('n', 'L', '5l',{})
keymap('n', 'J', '5j',{})
keymap('n', 'K', '5k',{})

-- No highlight search
keymap('n', '<Tab><CR>', ':nohlsearch<CR>',{})

-- ESC remap
keymap('i', 'jk', '<esc>',{})
-- Split screen to left
keymap('n', 'sl', ':set splitright<CR>:vsplit<CR>',{})
-- Split screen to right
keymap('n', 'sh', ':set nosplitright<CR>:vsplit<CR>',{})
-- Split screen upward
keymap('n', 'sk', ':set nosplitbelow<CR>:split<CR>',{})
-- Split screen down
keymap('n', 'sj', ':set splitbelow<CR>:split<CR>',{})
 
-- Screen turns left
keymap('n', '<Tab>h', '<c-w>h',{})
-- Screen turns right
keymap('n', '<Tab>l', '<c-w>l',{})
-- Screen turns up
keymap('n', '<Tab>k', '<c-w>k',{})
-- Screen turns down
keymap('n', '<Tab>j', '<c-w>j',{})

-- status bar up
keymap('n', '<up>', ':res -1<CR>',{})
-- status bar down
keymap('n', '<down>', ':res +1<CR>',{})
-- Screen adjust right
keymap('n', '<left>', ':vertical resize+1<CR>',{})
-- Screen adjust left
keymap('n', '<right>', ':vertical resize-1<CR>',{})

-- New screen
keymap('n', '<Tab>n', ':tabe<CR>',{})
-- Next screen
keymap('n', '<Tab>=', ':+tabnext<CR>',{})
-- previous screen
keymap('n', '<Tab>-', ':-tabnext<CR>',{})
-- 
-- Formatting
keymap('n', 'GGG', 'gg=G',{})


--[[ 
------------------- Plugins -------------------
--]] 
require('plugins')
require('colortheme')
require('coc')
