
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- build function
function DSCMD_build()
    vim.cmd[[w]]
    if vim.bo.filetype == 'c' then 
        -- c makefile compile
        vim.api.nvim_command("make -j16")
    elseif vim.bo.filetype == 'cpp' then
        -- cpp makefile compile
        vim.api.nvim_command("make -j16")
    elseif vim.bo.filetype == 'make' then
        vim.api.nvim_command("make -j16")
    end
end

function DSCMD_clean()
    if vim.bo.filetype == 'c' then 
        -- c makefile compile
        vim.api.nvim_command("make clean")
    elseif vim.bo.filetype == 'cpp' then
        -- cpp makefile compile
        vim.api.nvim_command("make clean")
    elseif vim.bo.filetype == 'make' then
        vim.api.nvim_command("make clean")
    end
end

function DSCMD_run()
    if vim.bo.filetype == 'c' then 
        -- c makefile compile
        vim.api.nvim_command("make run")
    elseif vim.bo.filetype == 'cpp' then
        -- cpp makefile compile
        vim.api.nvim_command("make run")
    elseif vim.bo.filetype == 'make' then
        vim.api.nvim_command("make run")
    end
end

local function build_and_run_config()
    keymap('n', 'mk', ':lua DSCMD_build()<cr>', opts)
    keymap('n', 'mc', ':lua DSCMD_clean()<cr>', opts)
    keymap('n', 'mr', ':lua DSCMD_run()<cr>', opts)
end

build_and_run_config()

