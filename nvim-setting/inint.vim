"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto reload init.vim when editing it
autocmd! bufwritepost ~/.config/nvim/init.vim :source ~/.config/nvim/init.vim
nnoremap <leader>e :e ~/.config/nvim/init.vim

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" basic map
inoremap jj <Esc>
let mapleader = ","      " 定义<leader>键

nnoremap J 5j
nnoremap K 5k
nnoremap H ^
nnoremap L $

" window motion
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " 设置不兼容原始vi模式
set clipboard=unnamed
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set numberwidth=1
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set nofoldenable         " 禁用折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" UI
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'yianwillis/vimcdoc'
Plug 'itchyny/vim-cursorword'

" 代码编辑
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'matze/vim-move'
Plug 'romainl/vim-qf'
Plug 'Shougo/echodoc.vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'plasticboy/vim-markdown' ,{'for': ['markdown','pandoc']}
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vimwiki/vimwiki'
Plug 'chrisbra/csv.vim'
Plug 'SidOfc/mkdx'
Plug 'jceb/vim-orgmode'
Plug 'janko/vim-test'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'

Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'junegunn/vim-slash'

" text object
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function'
Plug 'terryma/vim-expand-region'
Plug 'coderifous/textobj-word-column.vim'

Plug 'terryma/vim-smooth-scroll'

Plug 'rhysd/clever-f.vim'

" web开发
Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'vim-scripts/HTML-AutoCloseTag'
Plug 'gorodinskiy/vim-coloresque'
Plug 'marijnh/tern_for_vim'

" coc.nvim代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" 安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>


" color sheme
set background=dark
colorscheme gruvbox

" airline
let g:airline_theme="gruvbox"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" nerdtree
let g:NERDTreeWinPos = "right"
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
inoremap <silent> <leader>n <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" vim-devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_startify = 1


" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 176
let g:indentLine_bgcolor_term = 0
let g:indentLine_fileType=['html','css','js','vim','sh']

" tagbar
let g:tagbar_width = 30
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_rightt=1
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
nnoremap <silent> <leader>t :TagbarToggle<cr>
inoremap <silent> <leader>t <esc> :TagbarToggle<cr>

" vim-movw
let g:move_key_modifier = '<leader>'
nmap <leader>k <Plug>MoveLineUp
nmap <leader>j <Plug>MoveLineDown
nmap <leader>h <Plug>MoveCharLeft
nmap <leader>l <Plug>MoveCharRight
vmap <leader>j <Plug>MoveBlockDown
vmap <leader>k <Plug>MoveBlockUp
vmap <leader>h <Plug>MoveBlockLeft
vmap <leader>l <Plug>MoveBlockright

" echodoc
let g:echodoc_enable_at_startup = 1
let g:echodoc#type = 'floating'
highlight link EchoDocFloat Pmenu

"text object

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
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" echodoc.vim
let g:echodoc_enable_at_startup = 1

" tabular
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>

" gv
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>

let g:gitgutter_enabled=1
nnoremap <silent> <leader>d :GitGutterToggle<cr>

" bracey
let g:bracey_browser_command =0
let g:bracey_auto_start_browser = 1
let g:bracey_refresh_on_save =1
let g:bracey_auto_start_server =1

" emmet
let g:user_emmet_mode='a'
autocmd FileType html,css EmmetInstall

" javascript-libraries-syntax
let g:used_javascript_libs = 'jquery,d3'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_d3 = 1

" mkdx
let g:mkdx#settings = {
    \ 'image_extension_pattern': 'a\?png\|jpe\?g\|gif', 
    \ 'restore_visual':  1, 
    \ 'enter': { 'enable': 1, 
    \ 'shift': 0, 
    \ 'o': 1, 
    \ 'shifto': 1, 
    \ 'malformed': 1 }, 
    \ 'map':{ 'prefix': '<localleader>', 'enable': 0 }, 
    \ 'tokens':  { 'enter':  ['-', '*', '>'],
    \ 'bold':   '**', 'italic': '*',
    \ 'strike': '',
    \ 'list':   '-',  'fence':  '',
    \ 'header': '#' },
    \ 'checkbox': { 'toggles': [' ', '-', 'x'],
    \ 'update_tree': 2,
    \ 'initial_state': ' ' },
    \ 'toc':{ 'text':       "TOC",
    \ 'list_token': '-',
    \ 'position': 0,
    \ 'update_on_write':   0,
    \ 'details': {
    \      'enable':  0,
    \      'summary': '{{toc.text}}',
    \      'nesting_level': -1,
    \      'child_count': 5,
    \      'child_summary': 'show {{count}} items'
    \       }
    \  },
    \ 'table': { 'divider': '|',
    \            'header_divider': '-',
    \            'align': {
    \               'left':    [],
    \               'right':   [],
    \               'center':  [],
    \               'default': 'center'
    \            }
    \          },
    \ 'links':{ 'external': {
    \              'enable':     0,
    \              'timeout':    3,
    \              'host':       '',
    \              'relative':   1,
    \              'user_agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/9001.0.0000.000 vim-mkdx/1.9.0'
    \               },
    \           'fragment': {
    \              'jumplist': 1,
    \              'complete': 1
    \               }
    \         },
    \ 'highlight':    { 'enable': 0 },
    \ 'auto_update':  { 'enable': 1 },
    \ 'fold':         { 'enable': 0, 'components': ['toc', 'fence'] }
    \ }

" markdown
let g:vim_markdown_folding_level =1
let g:vim_markdown_folding_level = 6

" markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_browser = 'chrome'
let g:mkdp_open_ip = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {}
    \ }
nmap <leader><C-o> <Plug>MarkdownPreview
nmap <leader><C-s> <Plug>MarkdownPreviewStop
nmap <leader><C-p> <Plug>MarkdownPreviewToggle

" coc
set shell=/bin/sh
set nobackup
set nowritebackup
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> <space><space>o :call <SID>show_documentation()<CR>

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


