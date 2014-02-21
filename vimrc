source ~/.vim/bundles.vim

let mapleader=","


map <leader>q :qall<cr>
"-----------------------
" Quick Open Files
" -----------------------
map <silent> <leader>ee :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
"autocmd! bufwritepost .vimrc source ~/.vimrc "
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <silent> <leader>go :e ~/.vim/bundle/snipmate-snippets/snippets/go.snippets<cr>
map <silent> <leader>dj :e ~/.vim/bundle/snipmate-snippets/snippets/django.snippets<cr>
map <silent> <leader>dj :e ~/.vim/bundle/snipmate-snippets/snippets/django.snippets<cr>
map <silent> <leader>py :e ~/.vim/bundle/snipmate-snippets/snippets/python.snippets<cr>
map <silent> <leader>html :e ~/.vim/bundle/snipmate-snippets/snippets/html.snippets<cr>

map <silent> <leader>zz :e ~/.vim/bundle/zhengyaotian.com/site/markdown/<cr>

" To do list 
map <silent> <leader>todo :vsplit+e ~/todo_list.md<cr>

map <silent> <leader>readme :vsplit+e ~/.vim/README.md<cr>


" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on
  
" enable syntax hightlight and completion 
syntax enable
syntax on

" color theme
color vividchalk

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search operations
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

" editor settings
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set history=1000
set backspace=indent,eol,start                                    " More powerful backspacing

" display settings
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
"set nowrap                                                        " dont wrap lines
set scrolloff=2                                                   " 2 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
"set relativenumber
"set ruler                                                         " show cursor position in status bar
"set showmode                                                      " show mode in status bar (insert/replace/...)

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace & 
set shiftwidth=4    " indent width
"set textwidth=79
set expandtab       " expand tab to space


autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '\'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" tag for golang
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Nerd Tree 
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" powerline
"let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" SuperTab
let g:SuperTabDefultCompletionType='context'

let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
let g:SuperTabRetainCompletionType=2

"----------------
"解决tab 冲突
"----------------
"将snipMate的triger key 修改了
"let g:snips_trigger_key='<C-S-j>'
"let g:snips_trigger_key_backwards='<C-S-a-j>'

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>t :TagbarToggle<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" eggcache vim
":command W w
":command WQ wq
":command Wq wq
":command Q q
":command Qa qa
":command QA qa

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Monaco:h13
    set showtabline=2
    set columns=140
    set lines=40
    "noremap <D-M-Left> :tabprevious<cr>
    "noremap <D-M-Right> :tabnext<cr>
    "map <D-1> 1gt
    "map <D-2> 2gt
    "map <D-3> 3gt
    "map <D-4> 4gt
    "map <D-5> 5gt
    "map <D-6> 6gt
    "map <D-7> 7gt
    "map <D-8> 8gt
    "map <D-9> 9gt
    "map <D-0> :tablast<CR>
endif

" setup for golang
set rtp+=$GOROOT/misc/vim
autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist 
autocmd FileType go autocmd BufWritePre <buffer> Fmt   "automatically format the code"
"autocmd BufWritePre *.go :Fmt


" this is for the text aligning
nmap <Leader>w= :Tabularize /=<CR>
vmap <Leader>w= :Tabularize /=<CR>
nmap <Leader>w: :Tabularize /:<CR>
nmap <Leader>w: :Tabularize /:<CR>
vmap <Leader>w:: :Tabularize /:\zs<CR>
vmap <Leader>w:: :Tabularize /:\zs<CR>

" This is for the text aligning each time if you type '|'
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
 
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" 粘贴代码，代码前会自动加indent，解决这个问题的
:set pastetoggle=<F10>


"代码格式优化化

map <F6> :call FormartSrc()<CR><CR>

"定义FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc

" 这个解决在终端中NERDTree 的目录是乱码
let NERDTreeDirArrows = 0


"js
map <leader>j :JSHint<cr>

"git
:nmap ga :Gwrite<cr>
:nmap gc :Gcommit<cr>
:nmap gs :Gstatus<cr>
:nmap gp :Git push origin master<cr>



" This required by autopep8 format python code
" Restore cursor position, window position, and last search after running a
" command.
function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction



"----------------------------------------
" autopep8  auto format python code
"----------------------------------------
" require autopep8
" pip install autopep8

autocmd FileType python nnoremap <S-f> :call Autopep8()<CR>

function! Autopep8()
    call Preserve(':silent %!autopep8 --ignore=E501 -')
endfunction

"set omni to automation completion by pop menu and quickly list
inoremap <leader>, <C-x><C-o>
set completeopt=longest,menuone

"UltiSnips to write snip
:nmap snip :vsplit+UltiSnipsEdit<cr>
inoremap <leader>s <C-Tab>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<leader>l"

" 从来没有过，所以去掉备份
set nobackup



"------------------------------------------------------------------------------------- 
" folding 
"------------------------------------------------------------------------------------- 
"set foldenable " turn on folding 
"set foldmethod=indent " make folding indent sensitive 
"set foldlevel=100 " don't autofold anything (but I can still fold manually) 
"set foldopen -=search " don't open folds when you search into them 
"set foldopen -=undo " don't open folds when you undo stuff 
"nnoremap  @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')


