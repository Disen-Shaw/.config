"======================================================================
"
" Colortheme Gruvbox
let g:gruvbox_italic=1
let g:gruvbox_bold=1
"let g:gruvbox_termcolors=16
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
"======================================================================
"
" Arirline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#tabline#formatter = 'default'

let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"======================================================================
"
" IndentLine
"let g:indentLine_enabled = 1
let g:indentLine_enabled = 0
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进j
"======================================================================
"
" Rainbow
let g:rainbow_active = 0
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
"
"======================================================================
