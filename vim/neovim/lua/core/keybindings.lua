
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local function keybinding_config()
	-- Disable keybindings I don't use
	keymap('', '<Space>', '<Nop>', {} )
	keymap('', 'c', '<nop>', {})
	keymap('', 's', '<nop>', {})
	keymap('', 'S', '<nop>', {})
	keymap('', 'Q', '<nop>', {})
	keymap('', 'H', '<nop>', {})
	keymap('', 'J', '<nop>', {})
	keymap('', 'K', '<nop>', {})
	keymap('', 'L', '<nop>', {})
	keymap('', '<c-b>', '<nop>', {})
	keymap('', '<c-z>', '<nop>', {})
	keymap('', '<c-e>', '<nop>', {})
	keymap('', '<c-h>', '<nop>', {})
	keymap('', '<c-l>', '<nop>', {})
	keymap('', '<c-j>', '<nop>', {})
	keymap('', '<c-k>', '<nop>', {})

	-- Esc map
	keymap('i', 'jk', '<esc>', opts)
	keymap('i', 'kj', '<esc>', opts)
	
	-- Save file as 'S'
	keymap('n', 'S', ':w<cr>', opts)
	-- Exit file as 'Q'
	keymap('n', 'Q', ':q!<cr>', opts)

	-- Fast move cursor
	keymap('', 'H', '^', opts)
	keymap('', 'L', '$', opts)
	keymap('', 'J', '5j', opts)
	keymap('', 'K', '5k', opts)

	-- Disable highlight search
	keymap('', '<tab><cr>', ':nohlsearch<CR>', { noremap = true })

	-- Window split
	keymap('n', 'sl', ':set splitright<cr>:vsplit<cr>', opts)
	keymap('n', 'sh', ':set nosplitright<cr>:vsplit<cr>', opts)
	keymap('n', 'sk', ':set splitbelow<cr>:split<cr>', opts)
	keymap('n', 'sk', ':set nosplitbelow<cr>:split<cr>', opts)
	-- Window switch
	keymap('n', '<tab>h', '<c-w>h', opts)
	keymap('n', '<tab>l', '<c-w>l', opts)
	keymap('n', '<tab>k', '<c-w>k', opts)
	keymap('n', '<tab>j', '<c-w>j', opts)

	-- Window resize
	keymap('n', '<c-up>', ':resize -1<cr>', opts)
	keymap('n', '<c-down>', ':resize +1<cr>', opts)
	keymap('n', '<c-left>', ':vertical resize -1<cr>', opts)
	keymap('n', '<c-right>', ':vertical resize +1<cr>', opts)
end

keybinding_config()

