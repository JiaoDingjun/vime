"------------------------------------------- base key map
inoremap jk <esc> " jk执行esc
nnoremap <M-c> <esc>:close<cr> " 关闭窗口
vnoremap <M-c> <esc>:close<cr>
nnoremap <BackSpace> :nohl<cr> " 取消搜索高亮
" 删除buffer
if HasPlug('bclose.vim')
    nnoremap <C-x>  :Bclose<CR>
else
    nnoremap <c-x> :bd<cr>
endif

" 窗口
" noremap <c-h> <C-w>h
" noremap <c-j> <C-w>j
" noremap <c-k> <C-w>k
" noremap <c-l> <C-w>l
noremap <M-H> <C-w>h
noremap <M-J> <C-w>j
noremap <M-K> <C-w>k
noremap <M-L> <C-w>l
" 更改窗口大小
nnoremap <M-{> :vertical resize -5<CR> " 更改窗口宽度
nnoremap <M-}> :vertical resize +5<CR>
" nnoremap <M-_>= :exe "resize " . (winheight(0) * 3/2)<CR> " 更改窗口高度
" nnoremap <M-+>- :exe "resize " . (winheight(0) * 2/3)<CR>
" 分割窗口
" nnoremap <c-w>s <esc><c-w>s<esc><c-w>j
" nnoremap <c-w>v <esc><c-w>v<esc><c-w>l
nnoremap <c-w>k :abo split <cr>
nnoremap <c-w>h :abo vsplit <cr>
nnoremap <c-w>j :rightbelow split <cr>
nnoremap <c-w>l :rightbelow vsplit <cr>
" nnoremap <M-W>k :abo split <cr>
" nnoremap <M-W>h :abo vsplit <cr>
" nnoremap <M-W>j :rightbelow split <cr>
" nnoremap <M-W>l :rightbelow vsplit <cr>

" 插入模式下的一些快捷键
" inoremap <C-s> <esc>:w<cr>
" inoremap <C-a> <esc>ggVG
inoremap <M-o> <esc>o
inoremap <M-O> <esc>O
inoremap <M-h> <esc>I
inoremap <M-l> <esc>A

noremap <space><space> <esc>:w<cr><left> " 两个space保存所有文件

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap Y y$ " 复制到末尾

" terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l
tnoremap <c-h> <c-\><c-n><c-w>h

"tabl operation
nnoremap <leader>tn :tabnew<cr>
" nnoremap <leader>te :tabedit
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :+tabmove
nnoremap <leader>tM :-tabmove
" nnoremap <leader>th :-tabmove<cr>
" nnoremap <leader>tl :+tabmove<cr>

"------------------------------------------- vim-airline
if !HasPlug('vim-airline')
    nnoremap  <M-l> :tabnext<cr>
    nnoremap  <M-h> :tabprevious<CR>
    tnoremap  <M-l> <c-\><c-n>:tabnext<cr>
    tnoremap  <M-h> <c-\><c-n>:tabprevious<CR>
endif

"------------------------------------------- ale
if HasPlug('ale')
	" 过时了，现在主要用coc
    nmap <silent> <space>{ <Plug>(ale_previous_wrap)
    nmap <silent> <space>} <Plug>(ale_next_wrap)
endif

"------------------------------------------- leaderf
if HasPlug('LeaderF')
	" 过时了，现在主要用coc
    nnoremap <M-f> :LeaderfFile<CR>
    "nnoremap <M-t> :LeaderfBufTag<CR>
    "nnoremap <M-T> :LeaderfBufTagAll<CR>
    nnoremap <M-o> :LeaderfBufferAll<CR>
    "nnoremap <M-b> :LeaderfTabBufferAll<CR><TAB>
    nnoremap <M-s> :LeaderfLine<CR>
    nnoremap <M-S> :<C-hhhU><C-R>=printf("Leaderf rg -S --fullPath %s", getcwd())<cr><cr>
    nnoremap <M-r> :LeaderfMru<CR>
endif

"------------------------------------------- fzf
if HasPlug('fzf')
	" 过时了，现在主要用coc
    nnoremap <M-f> :Files<CR>
    nnoremap <M-t> :BTags<CR>
    nnoremap <M-T> :Tags<CR>
    nnoremap <M-o> :Buffers<CR>
    " nnoremap / :BLines<CR>
    " nnoremap ? :Rg<CR>
    nnoremap <M-s> :BLines<CR>
    nnoremap <M-S> :Rg<CR>
    nnoremap <M-r> :History<CR>
    nnoremap <M-g> :GFiles?<CR>
    nnoremap <M-G> :GFiles<CR>
    nnoremap <M-m> :Marks<CR>
    nnoremap <M-w> :Windows<CR>
endif

"------------------------------------------- easymotion
if HasPlug('vim-easymotion')
	" 过时了，现在主要用cleverf
    nmap gk <Plug>(easymotion-overwin-f)
    nmap gl <Plug>(easymotion-overwin-line)
    "imap <M-k> <esc><Plug>(easymotion-overwin-f)
    "imap <M-j> <esc><Plug>(easymotion-overwin-line)
    " nmap <Leader>w <Plug>(easymotion-overwin-w)
endif

"------------------------------------------- goyo
if HasPlug('goyo.vim')
    nnoremap <F7> <esc>:Goyo<cr>
    "setlocal nonumber
    "setlocal norelativenumber
endif

"------------------------------------------- ChooseWin
if HasPlug('vim-choosewin')
    nnoremap <silent> - :ChooseWin<CR>
endif

"------------------------------------------- Autoformat
if HasPlug('vim-autoformat')
	" 过时了，现在主要用coc
    nnoremap <M-i> :Autoformat<cr>
endif

"------------------------------------------- Startify
if HasPlug('vim-startify')
	" 不花里胡少的了
    noremap <leader>s <esc>:Startify<cr>
    "au FileType startify noremap q :q<cr>
endif

"-------------------------------------------- zoomwintab
if HasPlug('zoomwintab.vim')
    nnoremap  <c-w>o :ZoomWinTabToggle<cr>
endif

"-------------------------------------------- tagbar
if HasPlug('tagbar')
    nnoremap <F3> :TagbarToggle<cr>
    "inoremap <F3> <esc>:TagbarToggle<cr>
endif
