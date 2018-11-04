
set nocompatible
"if has('win32')
"... 
"elseif has('unix')
"... 
"elseif has('mac')
"... 
"endif

"if has('python')
"    command! python python
"else
"    command! python python3
"end



set go=
"encode set
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
set cc=80

language messages zh_CN.utf-8

filetype plugin on
filetype indent on

set hlsearch
set mouse=a
set ts=4  "tab width
set softtabstop=4 "delete num when use backspace
set shiftwidth=4 "indent space num
"set expandtab 

set lines=40 columns=100           " 设定窗口大小
set linespace=0
set rnu                             " 显示行号 
set number
if has('win32')
    "set guifont=Courier_New:h11:cANSI  " 设置字体 
    "set guifont=Ubuntu_Mono_derivative_Powerlin:h12
    "set guifont=Liberation Mono for Powerline:h10:cANSI
elseif has('unix')
	"set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
	set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
	set linespace=-1
    "set guifont=Liberation\ Mono\ for\ Powerline\ 10
endif
syntax on                          " 语法高亮 
set nobackup                       "从不备份 
set autowrite                       "自动保存
set cursorcolumn		   "高亮光标列
set cursorline			   "高亮光标行
set scrolloff=2			   "还有三行就开始翻滚，底部三行
"set scroll=10                      "一次翻滚10行
"set scrolljump=5                   "光标在底端，一次翻滚的行数
set showtabline=2	            "总是显示标签栏
set foldmethod=indent
set foldlevel=99
vmap <C-c> "+y                    " 选中状态下 Ctrl+c 复制
"nnoremap <M-F2> :g/^\s*$/d<CR>      "ALT-<F2> 去空行
"nnoremap <C-F2> :vert diffsplit   "比较文件
"""切换标签
map <F2> :tabnew<CR>            "新建标签 
"map <F4> :tabs<CR>
""""切换窗口
"map <M-l> <C-w>l
"map <M-h> <C-w>h
"map <M-j> <C-w>j
"map <M-k> <C-w>k
nnoremap <space> za
map L <C-w>l
map H <C-w>h
map J <C-w>j
map K <C-w>k
map <M-L> <C-w>L
map <M-H> <C-w>H
map <M-J> <C-w>J
map <M-K> <C-w>K
map <M-n> :cnext<CR>
map <M-+> <C-w>+
map <M--> <C-w>-
map <M-s> :split<CR>
map <M-v> :vsplit<CR>
nmap fw <Plug>(choosewin)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			set vundle to control and install my plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

filetype indent plugin on
syn on


" Specify a directory for plugins 
call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/vim-easymotion' 
"tab use
"Plug 'ervandew/supertab'
"mini buffer to show how many tab open
Plug 'fholgado/minibufexpl.vim'
"fast to find a file in disk
Plug 'kien/ctrlp.vim'
"check the syntax of the file which is saving
"Plug 'scrooloose/syntastic'
"bootom line of status of editing 
Plug 'bling/vim-airline'
"font of status line
Plug 'Lokaltog/powerline-fonts'
"file tree
Plug 'scrooloose/nerdtree'
"show tags of file
Plug 'majutsushi/tagbar'
"jump in file to where you want to go
"grep command
Plug 'dkprice/vim-easygrep'
"this is for auto pop match word
"Plug 'vim-scripts/AutoComplPop'
"change the same word at same time
Plug 'terryma/vim-multiple-cursors'
"auto finish the code"
"Plug 'msanders/snipmate.vim'
"Plug 'msanders/snipmate.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"snipmate to load program part"
"provides insert mode auto-completion for quotes, parens, brackets"
Plug 'Raimondi/delimitMate'               
"Plug 'davidhalter/jedi-vim'
"theme"
Plug 'tomasr/molokai' 
Plug 'altercation/vim-colors-solarized'
"indent
Plug 'Yggdroot/indentLine'
"highlight
"Plug 'ngloss/vim-javascript'
Plug 'mxw/vim-jsx'
"minibuffer
"Plug 'jlanzarotta/bufexplorer'

"Plug 'editorconfig/editorconfig-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'

Plug 'MarcWeber/vim-addon-manager'

Plug 'w0rp/ale'

Plug 'Valloric/ListToggle'
Plug 'sickill/vim-monokai'
"Plug 'tmhedberg/SimpylFold'
"Plug 'jistr/vim-nerdtree-tabs'

Plug 'Valloric/YouCompleteMe'
Plug 't9md/vim-choosewin'

Plug 'Yggdroot/LeaderF'
 
" Initialize plugin system
call plug#end()



filetype plugin indent on


"if has("autocmd")
"  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
"  au InsertEnter,InsertChange *
"    \ if v:insertmode == 'i' | 
"    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
"    \ elseif v:insertmode == 'r' |
"    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
"    \ endif
"  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
"endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			easymotion plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = 'f' "修改leader键

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
"colorscheme molokai                 " 设置配色方案
colorscheme monokai                 " 设置配色方案

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 			ctrlp	
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = 'mm'
let g:ctrlp_cmd = 'CtrlP'
"let ctrlp use the same dir with nerdtree
let g:NERDTreeChDirMode = 2 
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:ctrlp_working_path_mode = 'rw' 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 			minibuffer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 0 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplMoreThanOne=0  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2   "总是显示状态栏
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			NerdTree plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F3> :NERDTreeToggle<CR>    "打开树状文件目录
let NERDTreeDirArrows = 1
"autocmd BufRead * 25vsp ./     "自动运行NERDTree插件

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			surround	
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""			taglist	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"filetype on                            "文件类型检查
"let Tlist_Ctags_Cmd="ctags"
"set tags=tags;
"set autochdir
"set updatetime=1000
"let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
"let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
"let Tlist_Auto_Open=0
"nmap <F6> :Tlist<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 			easygrep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map ss :Grep  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			compiler
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR> 
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        "exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        "exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        "exec "!java %<"
	elseif &filetype == 'python'
		exec "!python3 %"
    elseif &filetype == 'sh'
        :!./%
    endif
endfunc

set makeprg=mingw32-make  "编译的命令和编译器设置

"C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %< -tui"
    exec "!gdb ./%<"
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""			cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("cscope")
"  "set csprg=/usr/bin/cscope
"  set csto=1
"  set cst
"  set nocsverb
"  " add any database in current directory
"  if filereadable("cscope.out")
"      cs add cscope.out
"  endif
"  set csverb
"endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			auto complete python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('python3')
autocmd FileType python set omnifunc=python3complete#Complete
elseif has('python')
autocmd FileType python set omnifunc=pythoncomplete#Complete
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <F6> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			supertab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"supertab just used with pop up selection


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			auto complete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"there are four demision of auto complete 
"first is variable complete, <c-n>
"second is file completem, trigger with command, Ctrlx+Ctrlf
"thrid is function compelte, <c-x><c-o>
"last is snip compelte, trigger with command, <tab>
"all this has different complete command
"all this are selection with super tab
"""""""""""""""""""""""" 
""""""""""""""""""""""""	snipmate   
let g:snippets_dir='$VIM\vimfiles\bundle\snipmate.vim\snippets'
let g:snips_author = 'haijie zhou'

"""""""""""""""""""""""""    AutoComplPop
"let g:acp_behaviorSnipmateLength = 1
"let g:acp_mappingDriven = 1
""let g:acp_behaviorKeywordCommand = "\<C-n>"
"let g:acp_behaviorPythonOmniLength = 2

let g:SimpylFold_docstring_preview=1


"""""""""""""""""""""""     
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic
"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_key_invoke_completion = '<C-Space>'
"python automation"
"let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_python_binary_path = 'python3'
set completeopt-=preview

let g:EasyMotion_leader_key = 'f' "修改leader键
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR

hi Normal  ctermfg=252 ctermbg=none


" ale
let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let &runtimepath.=',~/.vim/bundle/ale'



"set background=dark
"set background=light
"colorscheme solarized                 " 设置配色方案

filetype plugin on 

" ########################
"      toggle list
let g:lt_height = 5
let g:lt_location_list_toggle_map = '<F7>'
let g:lt_quickfix_list_toggle_map = '<leader>q'

let g:mapleader = ","

let g:choosewin_overlay_enable = 1

hi Normal  ctermfg=252 ctermbg=none

"leaderf"
nmap fr :LeaderfMru<CR>
nmap fl :LeaderfLine<CR>
nmap fb :LeaderfBufferAll<CR>
nmap ff :LeaderfFile<CR>
nmap fg :LeaderfLineAll<CR>
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_RootMarkers = ['.project']

