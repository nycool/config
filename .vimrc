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

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
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


"############# imap #################

inoremap jj <ESC>


"############# vmap #################



"############# cmap #################

cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"############# map ##################

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"############ plugn #################















