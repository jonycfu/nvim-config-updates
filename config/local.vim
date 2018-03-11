let g:python3_host_prog  = '/usr/local/bin/python'
let g:python_host_prog = '/usr/local/opt/python@2/bin/python2'
set clipboard=unnamed
set wrap

set rtp+=/usr/local/opt/fzf

set guifont=FuraMono_Nerd_Font:h12
let g:airline_powerline_fonts = 1
highlight! CursorLine ctermfg=42 guifg=#00d787 "rgb=0,215,135

let g:elite_mode=1

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

" Insert line breaks
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
