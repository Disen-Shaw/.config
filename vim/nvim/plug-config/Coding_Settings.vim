"=======================================================================  
"
"	Some Coding Plugins Settings 
"
"		Author: Disen Shaw
"		Email: shaodisheng1314@gmail.com
"
"======================================================================
" 
" Plugins: UndoTree
"
map <LEADER>ud :UndotreeToggle<CR>
"======================================================================
"
" Plugins: UndoTree
nnoremap <tab>t :NERDTreeToggle<CR>
"======================================================================
"
" Plugins: tagbar  
nmap <F10> :TagbarToggle<CR>
"======================================================================
"
" Plugins: Vim-Snippets
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:UltiSnipsSinppetDirectories=['Ultisnips']
"
"======================================================================
" 
" Plugins: neovim-gdb
	function! NvimGdbNoTKeymaps()
		tnoremap <silent> <buffer> <esc> <c-\><c-n>
	endfunction
	
	let g:nvimgdb_config_override = {
	  \ 'key_next': 'n',
	  \ 'key_step': 's',
	  \ 'key_finish': 'f',
	  \ 'key_continue': 'c',
	  \ 'key_until': 'u',
	  \ 'key_breakpoint': 'b',
	  \ 'set_tkeymaps': "NvimGdbNoTKeymaps",
	  \ }
"
"======================================================================
"
" Plugins: lazygit.nvim
" Keybinds: 
	map <LEADER>lg :LazyGit<CR>
" Basic Settings: 
"
	let g:lazygit_floating_window_winblend = 0 " transparency of floating window
	let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
	let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
	let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
	let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed
"======================================================================
"
" Plugins: vim-indet-guide
let g:indent_guides_guide_size = 1
let g:indent_guides_guide_level = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
set termguicolors
let g:Hexokinase_highlighters = ['virtual']


