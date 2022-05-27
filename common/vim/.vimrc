" Change cursor to block in command mode and I beam in insert mode.
" This works on Linux:
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" This works on MacOS Terminal
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" This works for Alacritty on MacOS
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

syntax on

" Use system clipboard for mac.
set clipboard=unnamed

" Remove delay when pressing Esc to switch modes
set timeoutlen=1000 ttimeoutlen=10

" Make tab key enter four spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4

" enable line numbers
set number

" Don't beep when escape is pressed.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set autoindent

" Make shift-tab unindent.
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" Do case insensitive search unless search has capitals.
set ignorecase
set smartcase

