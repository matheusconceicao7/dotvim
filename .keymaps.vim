"
"" See also the ftplugin folder for additional, file format specific, keymaps
"

let mapleader = "\<Space>"

" Make it easier to quit vim ;-)
:command WQ wq
:command Wq wq
:command Wqa wqa
:command W w
:command Q q
:command Qa qa

" Accept semicolon to enter commands
:nnoremap ; :

" fix for byobu-tmux terminal navigation
"map <ESC>[1;5D <C-Left>
"map <ESC>[1;5C <C-Right>
"map <ESC>[1;5A <C-Up>
"map <ESC>[1;5B <C-Down>

"map! <ESC>[1;5D <C-Left>
"map! <ESC>[1;5C <C-Right>
"map! <ESC>[1;5A <C-Up>
"map! <ESC>[1;5B <C-Down>
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set t_kP=\e[5;*~"
    execute "set t_kN=\e[6;*~"
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Automatically jump to the end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" show tasklist
"map <Leader>l <Plug>TaskList

" shortcut for bufexplorer
nnoremap <leader>b :BufExplorer<CR>

" shortcuts for NERDTree
" nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFind<CR>

" easy motion setup - jump to any word on screen
nnoremap s <Plug>(easymotion-s2)
nnoremap t <Plug>(easymotion-t2)
nnoremap  <leader>/ <Plug>(easymotion-sn)
nnoremap <leader>/ <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

" toggle comment
nnoremap <leader>c<space> NERDCommentToggle

" show list of tags
nnoremap <leader>o :TagbarToggle<CR>

"for just following the link
nnoremap <buffer> <C-l> <C-]>
"for following the help topic in a new split (often useful)
nnoremap <buffer> <A-l> <C-w><C-]><C-w>T

" move lines/blocks up/down (like eclipse)
nnoremap <A-DOWN> :m .+1<CR>==
nnoremap <A-UP> :m .-2<CR>==
inoremap <A-DOWN> <Esc>:m .+1<CR>==gi
inoremap <A-UP> <Esc>:m .-2<CR>==gi
vnoremap <A-DOWN> :m '>+1<CR>gv=gv
vnoremap <A-UP> :m '<-2<CR>gv=gv

" duplicate lines/blocks (like eclipse)
nnoremap <C-A-UP> yy p

" shortcuts for vim-bdd
"map <Leader>; :call RunTest("")<CR>
"map <Leader>' :call RunTestFile("")<CR>

" shortcuts for vim-test
nmap <silent> <Leader>; :TestNearest<CR>
nmap <silent> <Leader>' :TestFile<CR>
"nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
"nmap <silent> <leader>g :TestVisit<CR>

" ruby debugger keys
"noremap <leader>db  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.toggle_breakpoint()<CR>
"noremap <leader>dv  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_variables()<CR>
"noremap <leader>dm  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_breakpoints()<CR>
"noremap <leader>df  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_frames()<CR>
"noremap <leader>ds  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.step()<CR>
"noremap <leader>df  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.finish()<CR>
"noremap <leader>dn  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.next()<CR>
"noremap <leader>dc  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.continue()<CR>
"noremap <leader>de  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.exit()<CR>
"noremap <leader>dd  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.remove_breakpoints()<CR>

"set pastetoggle=<leader>p
nnoremap <silent> <leader>p :set invpaste<CR>

" search with Ack/ag
nnoremap <leader>a :Ack!<CR>

" zen coding
let g:user_zen_expandabbr_key = '<leader><TAB>'

" Tab navigation
nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
nnoremap tt :tabedit<CR>
nnoremap tc :tabclose<CR>

" Buffer navigation
nnoremap [ :bprevious<CR>
nnoremap ] :bnext<CR>

" close curreny buffer but not window
nnoremap <leader>q :BD<CR>

" write file to disk
nnoremap <leader>w :w<CR>

" CtrlP plugin mapping
"let g:ctrlp_map = '<c-p>'

" Expand selected region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Camel case navigation
map <silent><C-Left> <Plug>CamelCaseMotion_b
map <silent><C-Right> <Plug>CamelCaseMotion_w

" indent/unindent
noremap <TAB> >>
noremap <S-TAB> <<

" folding
noremap + zo
noremap - zc
noremap <Leader>+ zO
noremap <Leader>- zC

" hide all other buffers ("maximize")
noremap <Leader>m :only<CR>
noremap <Leader>M :BufOnly<CR>

nnoremap <silent> <C-B> :b#<CR>

" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
"map <Leader>L <Plug>(easymotion-bd-jk)
"nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)

" Emulate eclipse C-LeftMouse click behavior to jump to definition
:noremap <C-LeftMouse> <LeftMouse><C-]>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

