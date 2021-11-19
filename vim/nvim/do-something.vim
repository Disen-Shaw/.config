"       
"       
"        ____   ___    ____                         _____ _     _             
"       |  _ \ / _ \  / ___|  ___  _ __ ___   ___  |_   _| |__ (_)_ __   __ _ 
"       | | | | | | | \___ \ / _ \| '_ ` _ \ / _ \   | | | '_ \| | '_ \ / _` |
"       | |_| | |_| |  ___) | (_) | | | | | |  __/   | | | | | | | | | | (_| |
"       |____/ \___/  |____/ \___/|_| |_| |_|\___|   |_| |_| |_|_|_| |_|\__, |
"                                                                       |___/ 
"
"                                                     ____________________ 
"                                                    < Some Build Commend >
"                                                     -------------------- 
"                                                            \   ^__^
"                                                             \  (oo)\_______
"                                                                (__)\       )\/\
"                                                                    ||----w |
"                                                                    ||     ||
"==================================================================================
"一些有关于特殊文件的操作映射
"我的makefile文件常用的指令: 
" @ make          : 构建项目					简写mk
" @ make clean    : 清除构建项目			简写mc
" @ make run      : 执行构建项目			简写mr
"
"对于makefile中常用指令
autocmd FileType make map mk :make<CR>
autocmd FileType make map mc :make clean<CR>
autocmd FileType make map mr :make run<CR>
"c语言构建指令
"前提需要Makefile文件
autocmd FileType c map mk :make<CR>
autocmd FileType c map mc :make clean<CR>
autocmd FileType c map mr :make run<CR>
"对c++的构造指令
"前提需要Makefile文件
autocmd FileType cpp map mk :make<CR>
autocmd FileType cpp map mc :make clean<CR>
autocmd FileType cpp map mr :make run<CR>
"对markdown的构造指令
autocmd FileType markdown map mk :MarkdownPreviewToggle<CR>
"对python的构造指令
autocmd FileType python map mk :make<CR>
