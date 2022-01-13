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
" ==================================================================================
" 关于特定类型文的操作映射																												 "
" 我的 工程构建脚本 文件常用的指令:																								 "
" @ make          : 构建项目					简写mk																			 "
" @ make clean    : 清除构建项目			简写mc 																			 "
" @ make run      : 执行构建项目			简写mr																			 "
" ==================================================================================
"
" =================== 键位定义 ======================
"
	map mk :call CompileCmd()<CR>
	map mc :call CleanCmd()<CR>
	map mr :call RunCmd()<CR>
"
" ==================================================================================

" =================== 函数定义======================
" 编译脚本
function! CompileCmd()
	"保存文件
	execute "w"
	"c 语言构建命令
	if &filetype == 'c'
		execute 'make'
	"cpp 构建命令
	elseif &filetype == 'cpp'
		execute 'make'
	"makefile 执行 make 命令
	elseif &filetype == 'make'
		execute 'make'
	elseif &filetype == 'tex'
		execute 'VimtexStop'
		execute 'VimtexCompile'
	elseif &filetype == 'java'
		execute "!time javac %"
	endif
endfunction

" 清理脚本 
function! CleanCmd()
	execute 'w'
	if &filetype == 'c'
		execute "make clean"
	elseif &filetype == 'cpp'
		execute "make clean"
	elseif &filetype == 'make'
		execute 'make clean'
	elseif &filetype == 'tex'
		execute 'VimtexClean'
	endif
endfunction

" 执行脚本
function! RunCmd()
	execute "w"
	" 运行 c 的可执行文件
	if &filetype == 'c'
		execute "make run"
	" 运行 cpp 的可执行文件
	elseif &filetype == 'cpp'
		execute "make run"
	" Python 运行命令
	elseif &filetype == 'python'
		execute "!time python %"
	" shell脚本 运行命令
	elseif &filetype == 'sh'
		execute "!time sh %"
	elseif &filetype == 'markdown'
		exec "MarkdownPreviewToggle"
	elseif &filetype == 'make'
		execute 'make run'
	elseif &filetype == 'tex'
		execute 'VimtexView'
	elseif &filetype == 'lua'
		execute "!time lua %"
	endif
endfunction

