let g:python3_host_prog = '/usr/local/bin/python'
let g:python_host_prog = '/usr/local/opt/python@2/bin/python2'
set clipboard=unnamed
set wrap

set guifont=FuraCode_Nerd_Font:h12
let g:airline_powerline_fonts = 1
" highlight! CursorLine ctermfg=42 guifg=#00d787 "rgb=0,215,135

let g:elite_mode=1

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_mode='a'

""""""""""""""""""""""""""""""
" => Tabularize plugin
""""""""""""""""""""""""""""""
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>: :Tabularize /:<CR>


" Insert line breaks
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Resizing xsplits
nmap wk :resize +10<cr>
nmap wj :resize -10<cr>
nmap wh :vertical resize +10<cr>
nmap wl :vertical resize -10<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between buffers
noremap gh :bprev<CR>
noremap gl :bnext<CR>

" Move a line of text using ALT+[jk] or Comamnd+[jk]= [symbol] on mac
if has('mac')
  nnoremap <A-k> :m .-2<CR>==
  nnoremap <A-j> :m .+1<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
	vnoremap <A-k> :m '<-2<CR>gv=gv
	vnoremap <A-j> :m '>+1<CR>gv=gv
endif
