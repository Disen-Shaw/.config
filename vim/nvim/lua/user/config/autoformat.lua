
vim.cmd [[
au BufWrite * :Autoformat
autocmd FileType vim,tex,txt,lua,markdown,make let b:autoformat_autoindent=0
]]
