
local keymap = vim.api.nvim_set_keymap

-- Nerdtree
keymap('', '<Tab>t', ':NERDTreeToggle<CR>', {noremap = true,silent = true} )

-- Term
keymap('', '<Leader><Leader>t', ':ToggleTerm size=25 <CR>', {})


-- Undotree
keymap('', '<Leader>ud', ':UndotreeToggle<CR>', {noremap = true,silent = true} )

-- Tagbar
keymap('', '<F10>', ':TagbarToggle<CR>', {noremap = true,silent = true} )

-- Lzgit
keymap('', '<Leader>lg', ':LazyGit<CR>', {noremap = true,silent = true} )

-- GDB
keymap('', '<Leader>gdb', ':GdbStart', {noremap = true,silent = true} )

-- Vim-snippets
vim.g.UltiSnipsExpandTrigger="<c-e>"
vim.g.UltiSnipsJumpForwardTrigger="<c-j>"
vim.g.UltiSnipsJumpBackwardTrigger="<c-k>"
vim.g.UltiSnipsSinppetDirectories='Ultisnips'

