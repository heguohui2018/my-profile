"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto reload init.vim when editing it
autocmd! bufwritepost $MYVIMRC :source $MYVIMRC

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 2 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" python2
let g:loaded_python_provider = 0

" python3
let g:python3_host_prog = "/usr/local/bin/python3"

" ruby
let g:ruby_host_prog = '/usr/local/opt/ruby/bin/ruby'

" node
let g:node_host_prog = '/usr/local/bin/neovim-node-host'

let mapleader = ","      " 定义<leader>键
let g:maplocalleader = '<space>'
noremap J 5j
noremap K 5k
noremap H ^
noremap L $
vnoremap J 5j
vnoremap K 5k

" window motion
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" split window
noremap <space>wk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <space>wj :set splitbelow<CR>:split<CR>
noremap <space>wh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <space>wl :set splitright<CR>:vsplit<CR>

" command line mappings
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $SHELL = "/bin/zsh"
set nocompatible         " 设置不兼容原始vi模式
set clipboard=unnamed
set noshowmode
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set showmatch			 " 高亮显示匹配符号
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set numberwidth=1		 " 行号宽度
set cursorline			 " 高亮光标所在的行
set cursorcolumn		 " 高亮光标所在的列
set whichwrap+=h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面

set termguicolors		 " 开启真彩色支持

" 你喜欢字符串里的 SQL 
let php_sql_query = 1

" 打开字符串里的 HTML 语法高亮
let php_htmlInStrings = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on       " 自适应不同语言的智能缩进
set autoindent
set smartindent
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set backspace=2          " 使用回车键正常处理indent,eol,start等


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=popup   " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'

" UI
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" icon
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/vim-cursorword'

" 文档工具
Plug 'yianwillis/vimcdoc'
Plug 'rizzatti/dash.vim'

" 代码锁进
Plug 'Yggdroot/indentLine'

Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
" 注释
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'junegunn/vim-slash'
Plug 'godlygeek/tabular'
Plug 'liuchengxu/vista.vim'

" text object
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function'
Plug 'terryma/vim-expand-region'

Plug 'terryma/vim-smooth-scroll'

Plug 'rhysd/clever-f.vim'

" web开发
Plug 'mattn/emmet-vim',{ 'for': ['html', 'css','scss'] }
Plug 'othree/html5.vim',{'for':['html','js']}
Plug 'AndrewRadev/tagalong.vim',{'for':['html','js']}
Plug 'chemzqm/vim-jsx-improve',{'for':['js']}
Plug 'ap/vim-css-color'

" laravel
Plug 'tpope/vim-dispatch',{'for':['php']}
Plug 'tpope/vim-projectionist',{'for':['php']}
Plug 'noahfrederick/vim-composer',{'for':['php']}
Plug 'noahfrederick/vim-laravel',{'for':['php']}
Plug 'jwalton512/vim-blade',{'for':['php']}


" coc.nvim代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tjdevries/coc-zsh',{'for':['sh']}
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'Zaczero/bootstrap-v4-snippets',{'for':['html','php']}
Plug 'epilande/vim-es2015-snippets',{'for':['js']}
Plug 'heguohui2018/jquerysnippets',{'for':['js']}
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

" markdown插件
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' ,'for': ['markdown']}

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }

" floaterm
Plug 'voldikss/vim-floaterm'
Plug 'voldikss/fzf-floaterm'


Plug 'lambdalisue/vim-manpager'

Plug 'jerrymarino/SwiftPlayground.vim',{'for':['swift']}

call plug#end()

" 安装、更新、删除插件
noremap <leader><leader>i :PlugInstall<cr>
noremap <leader><leader>u :PlugUpdate<cr>
noremap <leader><leader>c :PlugClean<cr>

" color sheme
set background=dark
colorscheme gruvbox

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
let g:airline#extensions#vista#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#vimtex#enabled = 1
let g:airline#extensions#vista#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" vim-devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_startify = 1

" indentline
" 禁用默认缩进线颜色,该用自己自定义的缩进颜色
" 激活
let g:indentLine_enabled = 1
let g:indentLine_setColors = 1
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char_list = ['|', '¦', '┆', '┊','├─▸']
let g:indentLine_fileType = ['c','php','javascript','html','css','vim','sh','json','swift']
" 正常显示文本
let g:indentLine_conceallevel =1


" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" vim-easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

" easyalign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" tabular
noremap <leader>\ :Tab /\|<cr>
noremap <leader>= :Tab /=<cr>

" emmet
let g:user_emmet_install_global = 1
let g:user_emmet_mode='i' 
autocmd FileType html,css,scss EmmetInstall

" markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_browser = ''
let g:mkdp_open_ip = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
	\ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" " use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" " use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" " use a custom port to start server or random for empty
let g:mkdp_port = ''

" coc
set nowritebackup
set signcolumn=yes

" 在 vim 启动时启动 coc 服务
let g:coc_start_at_startup = 1

" 生成单词列表所用的额外 keyword 字符
autocmd FileType html,css,scss,javascript,vim,python,php let b:coc_additional_keywords = ["-","_",".","#"]

" 通过 <C-f> 和 <C-d> 去控制浮动窗口的滚动
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-d> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" 代码片段补全设置
let g:UltiSnipsExpandTrigger="<c-r>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()


" 以浮动窗口显示文档信息
nnoremap <silent> ed :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" 显示当前函数签名
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" 自动导入扩展,如果没有相关扩展，会自动安装
let g:coc_global_extensions=[ 
			\'coc-floaterm',
			\'coc-lists',
			\'coc-highlight',
			\'coc-git',
			\'coc-emoji',
			\'coc-word',
			\'coc-diagnostic',
			\'coc-prettier',
			\'coc-snippets',
			\'coc-json',
			\'coc-tsserver',
			\'coc-html',
			\'coc-css',
			\'coc-phpls',
			\'coc-vimlsp',
			\'coc-explorer',
			\'coc-clangd',
			\'coc-sql',
			\'coc-react-refactor',
			\'coc-yaml',
			\'coc-imselect',
			\'coc-svg',
			\'coc-git',
			\'coc-translator',
			\'coc-sourcekit'
			\]


" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

" coc-explorer(文件浏览)
nmap <leader>n :CocCommand explorer<CR>

let g:coc_explorer_global_presets = {
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 30,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'right-center',
\      'floating-width': 30,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" coc-translator
nmap <Leader>tt <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)

" replace
nmap <Leader>tr <Plug>(coc-translator-r)


" vista
let g:vista_default_executive = 'coc'
let g:vista_sidebar_position = 'vertical botright'
let g:vista_sidebar_width  = 35
let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_cursor_delay = 100
let g:vista_highlight_whole_line=1
let g:vista_floating_delay=50

let g:vista#renderer#enable_icon = 1
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
noremap <LEADER>v :Vista coc <CR>

" Dash
nmap <silent> <leader>d <Plug>DashSearch


" FZF
set shell=/bin/zsh
set viminfo='2000
" floating window size ratio
let g:fzf_preview_floating_window_rate = 1

" fzf command default options
let g:fzf_preview_default_fzf_options = {}

" Add fzf quit mapping
let g:fzf_preview_quit_map = 1

let g:fzf_preview_command = 'bat --color=always --plain {-1}' " Installed bat
" Commands used for binary file
let g:fzf_binary_preview_command = 'echo "{} is a binary file"'

" Commands used to get the file list from project
let g:fzf_preview_filelist_command = 'git ls-files --exclude-standard'    
let g:fzf_preview_lines_command = 'bat --color=always --plain --number' " Installed bat
" Use vim-devicons
let g:fzf_preview_use_dev_icons = 1
" devicons character width
let g:fzf_preview_dev_icon_prefix_string_length = 3
let g:fzf_preview_dev_icons_limit = 5000

" jsx
let g:jsx_improve_javascriptreact = 1

" 启动画面
let g:startify_custom_header = [
                \ '   __      ___              _  _______     _________ ',
                \ '   \ \    / (_)            | | | |____ \  | |_______|',
                \ '    \ \  / / _ _ __ ___    | | | |    | \ | |_______ ',
                \ '     \ \/ / | | `_ ` _ \   | | | |    | | | |_______|',
                \ '      \  /  | | | | | | |  | | | |____| | | |_______ ',
                \ '       \/   |_|_| |_| |_|  |_| |_|_____/  |_|_______|',
                \ '',
                \ '                      https://github.com',
                \ '',
                \ ]
let g:startify_custom_footer = [
                \ '',
                \ '',
                \ '   适用于 web 开发！',
                \ ]


" floaterm
" 窗口类型
let g:floaterm_wintype = 'floating'
let floaterm_position = "center"
let g:floaterm_width = 0.95
let g:floaterm_height = 0.95
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
let g:floaterm_gitcommit = "floaterm"
hi FloatermBorder guifg=pink

let g:floaterm_keymap_toggle = '<space>ft'
let g:floaterm_keymap_next   = '<space>fj'
let g:floaterm_keymap_prev   = '<space>fk'
let g:floaterm_keymap_new    = '<space>fw'
let g:floaterm_keymap_hide = '<space>hw'
let g:floaterm_keymap_show= '<space>sw'
let g:floaterm_keymap_kill = '<space>ki'


