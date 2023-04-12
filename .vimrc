"###################
"      基础设置
"###################

" leader
let mapleader = ';'
let g:leader = ';'

" 开启 语法高亮
syntax on
" 查找结果 高亮显示
set hlsearch

" 关闭兼容模式
set nocompatible

" 解决vim 退格键（backspace）不能用
set backspace=indent,eol,start    
            

" 表示如果当前文件在 Vim 外被修改且未在 Vim 里面重新载入的话
" 则自动重新读取
set autoread    

" 选项用于设置Vim缩短消息长度的标志位列表              
set shortmess=atI   

" 选项用于改变搜索模式使用的特殊字符          
set magic    

" 用于设置 Vim 窗口标题
set title      

" 用于关闭 backup，设置覆盖文件时不保留备份文件k
set nobackup                   

" 用于关闭 errorbells 选项，表示 Vim 有错误信息时不响铃            
set noerrorbells    

" 表示使用可视响铃代替鸣叫，而显示可视响铃的终端代码由 t_vb 选项给出
set visualbell t_vb=           
set t_vb=       

" 表示以毫秒计的等待键码或映射的键序列完成的时间
set timeoutlen=500

" 设置鼠标可用
set mouse=a

"set color 256
set t_Co=256

" movement
set scrolloff=7                 " keep 3 lines when scrolling

"########################################
"#              THEME主题
"########################################

set background=dark

" 配色方案
colorscheme desert

" set mark column color
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" status line
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2   " Always show the status line - use 2 lines for the status bar


"#####################################
"#              编码设置
"#####################################

" 设置 Vim 内部使用的字符编码，它应用于缓冲区、寄存器、表达式所用的字符
set encoding=utf-8

" 设置一个字符编码的列表，表示 Vim 自动检测文件编码时的备选字符编码列表
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 用于设置参与自动检测换行符 () 格式类型的备选列表
set fileformats=unix,dos,mac 

" 用于设置终端使用的编码方式
set termencoding=utf-8    

" 表示自动排版完成的方式。Vim 在可视化模式下
" 可使用 = 进行代码格式的自动排版
" m 表示在任何值高于 255 的多字节字符上分行
" B 表示在连接行时，不要在两个多字节字符之间插入空格
set formatoptions+=m
set formatoptions+=B


"########################################
"#                 界面显示设置
"########################################

" 用于显示当前光标所在位置的行号和列号 (逗号分隔)
" 如果还有空间，在最右端显示文本在文件中的相对位置
set ruler  

" 用于设置显示行号
set number   

" 设置超过窗口宽度的行不自动回绕显示。
set nowrap  

" 用于设置在屏幕最后一行显示 (部分的) 命令
set showcmd  

" 在插入、替换和可视模式里，在最后一行提供消息
set showmode   

" 表示插入括号时短暂地跳转到与之匹配的对应括号，
" 而停留的时间由 matchtime 选项设置
set showmatch      

" 表示显示配对括号的十分之一秒
set matchtime=2 

"#########################################
"#                 查找设置
"#########################################


" 用于设置将搜索结果高亮显示
set hlsearch   

" 选项会让 Vim 根据已经在查找域中输入的文本
" 预览第一处匹配目标
" 每当新输入一个字符时，Vim 会即时更新预览内容
set incsearch 

" 当 ignorecase 和 smartcase 选项均打开时
" 如果搜索模式中包含大写字母
" vim就会认为当前的查找(搜索)是区分大小写的
" 如果搜索模式中不包含任何大写字母
" Vim 则会认为搜索应该不区分大小写
" 这是个比较 ”智能的” 推测你搜索意图的机制
set ignorecase            
set smartcase

"#######################################
"#              制表符设置
"#######################################


" 选项用于设置在Vim插入模式下按下 Tab 键时
" 输入到Vim中的都是空格
set expandtab    

" 表示插入 Tab 时使用 shiftwidth
set smarttab     

" 表示缩进列数对齐到 shiftwidth 值的整数倍
set shiftround


"####################################
"#              缩进设置
"####################################

" 用于设置新增加的行和前一行具有相同的缩进形式
" 选项用于设置新增行时进行”智能”缩进
" 主要用于 C 语言一族，与 cindent 选项类似
" 在Vim smartindent 缩进模式下
" 每一行都有相同的缩进量
" 直到遇到右大括号 (}) 取消缩进形式
set autoindent smartindent shiftround 

" 选项用于设置执行Vim普通模式下的缩进操作 ( << 和 >> 命令 )时缩进的列数                                                                                                                    
" shiftround 选项则表示缩进列数会自动取整到 ‘shiftwidth’ 选项值的倍数
set shiftwidth=4    

" 选项设置按下 Tab 键时，缩进的空格个数
set tabstop=4       
set softtabstop=4 


"###############################################
"#               显示当前光标位置设置
"###############################################

" 设置高亮显示光标当前所在列
set cursorcolumn

" 设置高亮显示光标所在屏幕行
set cursorline


"######################################
"#              文件类型设置
"######################################

" 配置项是 Vim 文件类型检测功能的开关
filetype on

" 用于 Vim 打开加载文件类型插件功能
filetype plugin on

" 用于指定 Vim 为不同类型的文件定义不同的缩进格式
filetype indent on

" 表示对于 Python 文件 (通过 autocmd 命令指示 Vim 监听 FileType 事件)，自动设置 Tab 键对应的空格个数等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNew *.md,*.mkd,*.markdown set filetype=markdown.mkd


" 表示新建后缀为 .sh、.py 的文件时，自动执行 AutoSetFileHead 函数。AutoSetFileHead 函数基本的逻辑是在新文件的首行自动插入部分内容，例如，新建 shell 脚本自动添加 #!/bin/bash”，然后新增两个空白行 (通过 normal G、normal o、normal o 三行实现
autocmd BufNewFile *.sh,*.py exec \":call AutoSetFileHead()\"
function! AutoSetFileHead()
    " .sh "
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif                                                                                                                                                  
         
    " python "     
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhiteLEADERs()
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")                                                                                                                                      
    let c = col(".")
    %s/\s\+$//e     
    call cursor(l, c)
endfun


"######################################
"#          键盘映射设置
"############################################################################
"     COMMAND       # NORMAL # VISUAL # OPERATOR PENDING # INSERT # COMMAND #
"############################################################################
" :map  # :noremap  #   y        y         y
" :nmap # :nnoremap #   y
" :vmap # :vnoremap #            y
" :omap # :onoremap #                      y
" :map! # :noremap! #                                        y         y
" :imap # :inoremap #                                        y         
" :cmap # :cnoremap #                                                  y
"
" 第一列命定定义的映射，可以被重新映射
" 第二列命令定义的映射，不能被重新映射
"  OPERATOR PENDING 
" 指当输入操作符（如d）时，然后继续输入
" 的移动步长和文本对象（dw）的状态
"######################################


"############# nmap #################

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>
set pastetoggle=<F5>            "    when in insert mode, press <F5> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" remap U to <C-r> for easier redo
nnoremap U <C-r>

" Quickly close the current window
nnoremap <leader>q :q<CR>
" Quickly save the current file
nnoremap <leader>w :w<CR>

"----------------------------------------------------------------------
" <leader>+数字键 切换tab
"----------------------------------------------------------------------
noremap <silent><leader>1 1gt<cr>
noremap <silent><leader>2 2gt<cr>
noremap <silent><leader>3 3gt<cr>
noremap <silent><leader>4 4gt<cr>
noremap <silent><leader>5 5gt<cr>
noremap <silent><leader>6 6gt<cr>
noremap <silent><leader>7 7gt<cr>
noremap <silent><leader>8 8gt<cr>
noremap <silent><leader>9 9gt<cr>
noremap <silent><leader>0 10gt<cr>

"----------------------------------------------------------------------
" 设置 CTRL+HJKL 移动光标（INSERT 模式偶尔需要移动的方便些）
" 使用 SecureCRT/XShell 等终端软件需设置：BackLEADER sends delete
" 详见：http://www.skywind.me/blog/archives/2021
"----------------------------------------------------------------------
noremap <C-h> <left>
noremap <C-j> <down>
noremap <C-k> <up>
noremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>


"----------------------------------------------------------------------
" ALT+N 切换 tab
"----------------------------------------------------------------------
noremap <silent><m-1> :tabn 1<cr>
noremap <silent><m-2> :tabn 2<cr>
noremap <silent><m-3> :tabn 3<cr>
noremap <silent><m-4> :tabn 4<cr>
noremap <silent><m-5> :tabn 5<cr>
noremap <silent><m-6> :tabn 6<cr>
noremap <silent><m-7> :tabn 7<cr>
noremap <silent><m-8> :tabn 8<cr>
noremap <silent><m-9> :tabn 9<cr>
noremap <silent><m-0> :tabn 10<cr>
inoremap <silent><m-1> <ESC>:tabn 1<cr>
inoremap <silent><m-2> <ESC>:tabn 2<cr>
inoremap <silent><m-3> <ESC>:tabn 3<cr>
inoremap <silent><m-4> <ESC>:tabn 4<cr>
inoremap <silent><m-5> <ESC>:tabn 5<cr>
inoremap <silent><m-6> <ESC>:tabn 6<cr>
inoremap <silent><m-7> <ESC>:tabn 7<cr>
inoremap <silent><m-8> <ESC>:tabn 8<cr>
inoremap <silent><m-9> <ESC>:tabn 9<cr>
inoremap <silent><m-0> <ESC>:tabn 10<cr>


"----------------------------------------------------------------------
" TAB：创建，关闭，上一个，下一个，左移，右移
" 其实还可以用原生的 CTRL+PageUp, CTRL+PageDown 来切换标签
"----------------------------------------------------------------------

noremap <silent> <leader>tc :tabnew<cr>
noremap <silent> <leader>tq :tabclose<cr>
noremap <silent> <leader>tn :tabnext<cr>
noremap <silent> <leader>tp :tabprev<cr>
noremap <silent> <leader>to :tabonly<cr>

" 左移 tab
function! Tab_MoveLeft()
	let l:tabnr = tabpagenr() - 2
	if l:tabnr >= 0
		exec 'tabmove '.l:tabnr
	endif
endfunc

" 右移 tab
function! Tab_MoveRight()
	let l:tabnr = tabpagenr() + 1
	if l:tabnr <= tabpagenr('$')
		exec 'tabmove '.l:tabnr
	endif
endfunc

noremap <silent><leader>tl :call Tab_MoveLeft()<cr>
noremap <silent><leader>tr :call Tab_MoveRight()<cr>
noremap <silent><m-left> :call Tab_MoveLeft()<cr>
noremap <silent><m-right> :call Tab_MoveRight()<cr>

"----------------------------------------------------------------------
" ALT 键移动增强
"----------------------------------------------------------------------

" ALT+h/l 快速左右按单词移动（正常模式+插入模式）
noremap <m-h> b
noremap <m-l> w
inoremap <m-h> <c-left>
inoremap <m-l> <c-right>

" ALT+j/k 逻辑跳转下一行/上一行（按 wrap 逻辑换行进行跳转） 
noremap <m-j> gj
noremap <m-k> gk
inoremap <m-j> <c-\><c-o>gj
inoremap <m-k> <c-\><c-o>gk

" 命令模式下的相同快捷
cnoremap <m-h> <c-left>
cnoremap <m-l> <c-right>

" ALT+y 删除到行末
noremap <m-y> d$
inoremap <m-y> <c-\><c-o>d$

"############# imap #################

inoremap jj <ESC>


"----------------------------------------------------------------------
" INSERT 模式下使用 EMACS 键位
"----------------------------------------------------------------------
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-_> <c-k>


"############# vmap #################



"############# cmap #################

"----------------------------------------------------------------------
" 命令模式的快速移动
"----------------------------------------------------------------------
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <c-d>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-_> <c-k>

"############# map ##################

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"############ plugn #################

" =======================
" ===  plugins  begin ===
" =======================:
call plug#begin('~/.vim/plugged')


"----------------------------------------------------------------------
" 默认插件 
"----------------------------------------------------------------------

" 文件浏览器
Plug 'scrooloose/nerdtree'

" nerdtree 高亮配置插件
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


" 全文快速移动，<leader><leader>f{char} 即可触发
Plug 'easymotion/vim-easymotion'

"----------------------------------------------------------------------
" LanguageTool 语法检查
"----------------------------------------------------------------------
Plug 'rhysd/vim-grammarous'


"----------------------------------------------------------------------
" ale：动态语法检查
"----------------------------------------------------------------------

Plug 'w0rp/ale'

"----------------------------------------------------------------------
" echodoc：搭配 YCM/deoplete 在底部显示函数参数
"----------------------------------------------------------------------
Plug 'Shougo/echodoc.vim'

"----------------------------------------------------------------------
" LeaderF：CtrlP / FZF 的超级代替者，文件模糊匹配，tags/函数名 选择
"----------------------------------------------------------------------

" 如果 vim 支持 python 则启用  Leaderf
if has('python') || has('python3')
	Plug 'Yggdroot/LeaderF'

	" CTRL+p 打开文件模糊匹配
	let g:Lf_ShortcutF = '<c-p>'

	" ALT+n 打开 buffer 模糊匹配
	let g:Lf_ShortcutB = '<m-n>'

	" CTRL+n 打开最近使用的文件 MRU，进行模糊匹配
	noremap <c-n> :LeaderfMru<cr>

	" ALT+p 打开函数列表，按 i 进入模糊匹配，ESC 退出
	noremap <m-p> :LeaderfFunction!<cr>

	" ALT+SHIFT+p 打开 tag 列表，i 进入模糊匹配，ESC退出
	noremap <m-P> :LeaderfBufTag!<cr>

	" ALT+n 打开 buffer 列表进行模糊匹配
	noremap <m-n> :LeaderfBuffer<cr>

	" ALT+m 全局 tags 模糊匹配
	noremap <m-m> :LeaderfTag<cr>

	" 最大历史文件保存 2048 个
	let g:Lf_MruMaxFiles = 2048

	" ui 定制
	let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

	" 如何识别项目目录，从当前文件目录向父目录递归知道碰到下面的文件/目录
	let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
	let g:Lf_WorkingDirectoryMode = 'Ac'
	let g:Lf_WindowHeight = 0.30
	let g:Lf_CacheDirectory = expand('~/.vim/cache')

	" 显示绝对路径
	let g:Lf_ShowRelativePath = 0

	" 隐藏帮助
	let g:Lf_HideHelp = 1

	" 模糊匹配忽略扩展名
	let g:Lf_WildIgnore = {
				\ 'dir': ['.svn','.git','.hg'],
				\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
				\ }

	" MRU 文件忽略扩展名
	let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']
	let g:Lf_StlColorscheme = 'powerline'

	" 禁用 function/buftag 的预览功能，可以手动用 p 预览
	let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

	" 使用 ESC 键可以直接退出 leaderf 的 normal 模式
	let g:Lf_NormalMap = {
			\ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
			\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<cr>']],
			\ "Mru": [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<cr>']],
			\ "Tag": [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<cr>']],
			\ "BufTag": [["<ESC>", ':exec g:Lf_py "bufTagExplManager.quit()"<cr>']],
			\ "Function": [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<cr>']],
			\ }

else
	" 不支持 python ，使用 CtrlP 代替
	Plug 'ctrlpvim/ctrlp.vim'

	" 显示函数列表的扩展插件
	Plug 'tacahiroy/ctrlp-funky'

	" 忽略默认键位
	let g:ctrlp_map = ''

	" 模糊匹配忽略
	let g:ctrlp_custom_ignore = {
	  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
	  \ 'file': '\v\.(exe|so|dll|mp3|wav|sdf|suo|mht)$',
	  \ 'link': 'some_bad_symbolic_links',
	  \ }

	" 项目标志
	let g:ctrlp_root_markers = ['.project', '.root', '.svn', '.git']
	let g:ctrlp_working_path = 0

	" CTRL+p 打开文件模糊匹配
	noremap <c-p> :CtrlP<cr>

	" CTRL+n 打开最近访问过的文件的匹配
	noremap <c-n> :CtrlPMRUFiles<cr>

	" ALT+p 显示当前文件的函数列表
	noremap <m-p> :CtrlPFunky<cr>

	" ALT+n 匹配 buffer
	noremap <m-n> :CtrlPBuffer<cr>
endif

Plug 'ycm-core/YouCompleteMe'

Plug 'cdelledonne/vim-cmake'

call plug#end()
" =======================
" ===   plugins  end  ===
" =======================



" =================================
" ===   plugins  configuration  ===
" =================================

" ==== preservim/nerdtree ====

"nnoremap <LEADER>e :NERDTreeToggle<CR>
noremap <LEADER>nn :NERDTree<CR>
noremap <LEADER>no :NERDTreeFocus<CR>
noremap <LEADER>nm :NERDTreeMirror<CR>
noremap <LEADER>nt :NERDTreeToggle<CR>


"===== Plug 'tiagofumo/vim-nerdtree-syntax-highlight' =====

let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeHijackNetrw = 0


"===== rhysd/vim-grammarous =====

noremap <space>rg :GrammarousCheck --lang=en-US --no-move-to-first-error --no-preview<cr>
map <space>rr <Plug>(grammarous-open-info-window)
map <space>rv <Plug>(grammarous-move-to-info-window)
map <space>rs <Plug>(grammarous-reset)
map <space>rx <Plug>(grammarous-close-info-window)
map <space>rm <Plug>(grammarous-remove-error)
map <space>rd <Plug>(grammarous-disable-rule)
map <space>rn <Plug>(grammarous-move-to-next-error)
map <space>rp <Plug>(grammarous-move-to-previous-error)


"===== w0rp/ale =====

" 设定延迟和提示信息
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'

" 设定检测的时机：normal 模式文字改变，或者离开 insert模式
" 禁用默认 INSERT 模式下改变文字也触发的设置，太频繁外，还会让补全窗闪烁
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" 在 linux/mac 下降低语法检查程序的进程优先级（不要卡到前台进程）
if has('win32') == 0 && has('win64') == 0 && has('win32unix') == 0
	let g:ale_command_wrapper = 'nice -n5'
endif


" 允许 airline 集成
let g:airline#extensions#ale#enabled = 1


   " 编辑不同文件类型需要的语法检查器
let g:ale_linters = {
			\ 'c': ['gcc', 'cppcheck'], 
			\ 'cpp': ['gcc', 'cppcheck'], 
			\ 'python': ['flake8', 'pylint'], 
			\ 'lua': ['luac'], 
			\ 'go': ['go build', 'gofmt'],
			\ 'java': ['javac'],
			\ 'javascript': ['eslint'], 
			\ }

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_linters.text = ['textlint', 'write-good', 'languagetool']

" 如果没有 gcc 只有 clang 时（FreeBSD）
if executable('gcc') == 0 && executable('clang')
	let g:ale_linters.c += ['clang']
	let g:ale_linters.cpp += ['clang']
endif

"====== Plug 'Shougo/echodoc.vim' ======

set noshowmode
let g:echodoc#enable_at_startup = 1


"----------------------------------------------------------------------
" YouCompleteMe 默认设置：YCM 需要你另外手动编译安装
"----------------------------------------------------------------------

" 禁用预览功能：扰乱视听
let g:ycm_add_preview_to_completeopt = 0

" 禁用诊断功能：我们用前面更好用的 ALE 代替
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone,noselect

" noremap <c-z> <NOP>

" 两个字符自动触发语义补全
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }


"----------------------------------------------------------------------
" Ycm 白名单（非名单内文件不启用 YCM），避免打开个 1MB 的 txt 分析半天
"----------------------------------------------------------------------
let g:ycm_filetype_whitelist = { 
			\ "c":1,
			\ "cpp":1, 
			\ "objc":1,
			\ "objcpp":1,
			\ "python":1,
			\ "java":1,
			\ "javascript":1,
			\ "coffee":1,
			\ "vim":1, 
			\ "go":1,
			\ "cs":1,
			\ "lua":1,
			\ "perl":1,
			\ "perl6":1,
			\ "php":1,
			\ "ruby":1,
			\ "rust":1,
			\ "erlang":1,
			\ "asm":1,
			\ "nasm":1,
			\ "masm":1,
			\ "tasm":1,
			\ "asm68k":1,
			\ "asmh8300":1,
			\ "asciidoc":1,
			\ "basic":1,
			\ "vb":1,
			\ "make":1,
			\ "cmake":1,
			\ "html":1,
			\ "css":1,
			\ "less":1,
			\ "json":1,
			\ "cson":1,
			\ "typedscript":1,
			\ "haskell":1,
			\ "lhaskell":1,
			\ "lisp":1,
			\ "scheme":1,
			\ "sdl":1,
			\ "sh":1,
			\ "zsh":1,
			\ "bash":1,
			\ "man":1,
			\ "markdown":1,
			\ "matlab":1,
			\ "maxima":1,
			\ "dosini":1,
			\ "conf":1,
			\ "config":1,
			\ "zimbu":1,
			\ "ps1":1,
			\ }


"======= 'cdelledonne/vim-cmake' ========

noremap <leader>co :CMakeOpen<CR>
noremap <leader>cg :CMakeGenerate<CR>
noremap <leader>cb :CMakeBuild<CR>
noremap <leader>ci :CMakeInstall<CR>
noremap <leader>ct :CMakeTest<CR>
noremap <leader>cq :CMakeClose<CR>
noremap <C-C> :CMakeStop<CR>










