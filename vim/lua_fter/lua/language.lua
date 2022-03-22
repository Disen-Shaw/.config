--[[
--------------------------------------
        不同编程语言的支持
--------------------------------------
--]]


--
-- Markdown ---------------
--
-- 快捷操作
vim.cmd [[
  autocmd FileType markdown inoremap ,f <ESC>/<++><CR>:nohlsearch<CR>c4l
  autocmd FileType markdown inoremap ,n ---<ENTER><ENTER>
  autocmd FileType markdown inoremap ,b **** <++><ESC>F*hi
  autocmd FileType markdown inoremap ,i ** <++><ESC>F*i
  autocmd FileType markdown inoremap ,m $$ <++><ESC>F$i
  autocmd FileType markdown inoremap ,d `` <++><ESC>F`i
  autocmd FileType markdown inoremap ,s ~~~~ <++><ESC>F~hi
  autocmd FileType markdown inoremap ,h ====<SPACE><++><ESC>F=hi
  autocmd FileType markdown inoremap ,p ![](<++>)<++><ESC>F[a
  autocmd FileType markdown inoremap ,l [](<++>)<++><ESC>F[a
  autocmd FileType markdown inoremap ,c ```<ENTER><++><ENTER>```<ENTER><ENTER><++><ESC>4kA
]]

-- Markdown Table Mode
vim.g.table_mode_corner = '|'
vim.g.table_mode_border = 0
vim.g.table_mode_fillchar = ' '

vim.cmd [[
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
]]

-- Markdown Preview
vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_command_for_global = 0
vim.g.mkdp_open_to_the_wrold = 0
vim.g.mkdp_open_ip = ''
vim.g.mkdp_browser = 'qutebrowser'
vim.g.mkdp_echo_preview_url = 0
vim.g.mkdp_browserfunc = ''
vim.g.mkdp_markdown_css = ''
vim.g.mkdp_highlight_css = ''
vim.g.mkdp_port = ''
