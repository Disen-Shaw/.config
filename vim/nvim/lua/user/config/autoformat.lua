
vim.cmd [[
au BufWrite * :Autoformat
autocmd FileType vim,tex,txt,lua,markdown,make,toml let b:autoformat_autoindent=0
]]
