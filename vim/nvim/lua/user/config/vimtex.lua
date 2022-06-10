vim.cmd [[
let g:vimtex_flavor = 'latex'
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}
let g:vimtex_compiler_latexmk = {
                \ 'executable': 'latexmk',
    \ 'options' : [
    \   '-xelatex',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode'
                \ ],
          \ }
let g:vimtex_view_method = 'zathura'
let g:vimtex_mappings_enabled = 0
let g:vimtex_text_obj_enabled = 0
let g:vimtex_motion_enabled = 0
let maplocalleader=' '
]]
