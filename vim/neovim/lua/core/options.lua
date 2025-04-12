
local vim_o_opts = 
{
    smarttab        = true,
    smartindent     = true,
    autochdir	    = false,
    autoread	    = true,
    autoindent	    = true,
    shiftwidth	    = 4,
    softtabstop	    = 4,
    expandtab	    = true,
    backspace	    = "indent,eol,start",
    backup          = false,
    belloff         = "all",
    clipboard	    = "unnamedplus",
    cmdheight	    = 2,
    colorcolumn	    = "80",
    mouse           = "",
    number          = true,
    numberwidth	    = 5,
    incsearch	    = true,
    showmode	    = false,
    scrolloff	    = 8,
    signcolumn	    = "yes",
    termguicolors   = true,
}

local vim_g =
{
    mapleader       = ' ',
    encoding        = 'utf-8',
    langmenu        = 'zh_CN.UTF-8',
    wilmenu         = true,
    backspace       = 'indent,eol,start',
}

local function vim_options_config()

    -- vim.opt
    for k,v in pairs(vim_o_opts) do
        vim.opt[k] = v
    end

    -- vim.g
    for k,v in pairs(vim_o_opts) do
        vim.g[k] = v
    end

    vim.cmd[[
    	au BufReadPost * 
            if line("'\"") > 1 && line("'\"") <= line("$") | 
                exe "normal! g'\"" | 
            endif ]]
end

vim_options_config()

