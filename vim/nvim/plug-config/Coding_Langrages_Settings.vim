"================================================================================================================
"
"		  ____          _ _												 ___________________________ 
"		 / ___|___   __| (_)_ __   __ _ 					< Coding Langrages Settings >
"		| |   / _ \ / _` | | '_ \ / _` |					 --------------------------- 
"		| |__| (_) | (_| | | | | | (_| |					        \   ^__^
"		 \____\___/ \__,_|_|_| |_|\__, |					         \  (oo)\_______
"		                          |___/ 					            (__)\       )\/\
"																							                ||----w |
"																							                ||     ||
"
"		Author: Disen Shaw
"		Email: shaodisheng1314@gmail.com
"
"
"================================================================================================================
"		 __  __            _       _                     
"		|  \/  | __ _ _ __| | ____| | _____      ___ __  
"		| |\/| |/ _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \ 
"		| |  | | (_| | |  |   < (_| | (_) \ V  V /| | | |
"		|_|  |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|
"
"
" Markdown Key Map
"		Author: theCW
"		Brief: Some key mapping for markdown text
"
"----------------------------------------------
"
"next step
autocmd FileType markdown inoremap ,f <ESC>/<++><CR>:nohlsearch<CR>c4l
"add new line
autocmd FileType markdown inoremap ,n ---<ENTER><ENTER>
"add blod font
autocmd FileType markdown inoremap ,b **** <++><ESC>F*hi
"italics
autocmd FileType markdown inoremap ,i ** <++><ESC>F*i
"Math
autocmd FileType markdown inoremap ,m $$ <++><ESC>F$i
"mark like: `text`
autocmd FileType markdown inoremap ,d `` <++><ESC>F`i
"Mid line 
autocmd FileType markdown inoremap ,s ~~~~ <++><ESC>F~hi
"Highlight
autocmd FileType markdown inoremap ,h ====<SPACE><++><ESC>F=hi
"picture link
autocmd FileType markdown inoremap ,p ![](<++>)<++><ESC>F[a
"url link
autocmd FileType markdown inoremap ,l [](<++>)<++><ESC>F[a
"code block
autocmd FileType markdown inoremap ,c ```<ENTER><++><ENTER>```<ENTER><ENTER><++><ESC>4kA
"
"++++++++++++++++++++++++++++++++++++++++++++++
"
" Markdown Table Mode
"		Plugins: vim-table-mode
"		Author: dhruvasagar
"		Brief: Align the lines in the table
"
"----------------------------------------------
"
let g:table_mode_corner = '|'
let g:table_mode_border=0
let g:table_mode_fillchar=' '

function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'
"++++++++++++++++++++++++++++++++++++++++++++++
"
" Markdown Preview
"		Plugins: markdown-preview.nvim
"		Author: iamcco
"		Brief: Preview the Markdown 
"
"----------------------------------------------
"
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_wrold = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'qutebrowser'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1 
      \}
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''

"================================================================================================================
"		 _         _____   __  __
"		| |    __ |_   _|__\ \/ /
"		| |   / _` || |/ _ \\  / 
"		| |__| (_| || |  __//  \ 
"		|_____\__,_||_|\___/_/\_\
"		                         
"
" LaTeX Settings
