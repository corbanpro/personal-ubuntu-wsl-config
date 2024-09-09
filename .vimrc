
let netrw_liststyle=3

let mapleader=' '
let maplocalleader=' '

set colorcolumn=100
set number
set relativenumber
set wrap
set mouse=a
set breakindent
set undofile
set ignorecase
set smartcase
set updatetime=250
set timeoutlen=300
set splitright
set splitbelow
set cursorline
set scrolloff=15
set guicursor=i:ver25-iCursor

inoremap <C-R> <C-G>u<C-R> 
nnoremap <CR> o<ESC> 
nnoremap <Esc> <cmd>nohlsearch<CR>
nnoremap <C-q> <C-v> 
nnoremap <C-d> <C-d>zz 
nnoremap <C-u> <C-u>zz 
nnoremap <C-Space> $ 
xnoremap <leader>p "_dP 
noremap <leader>d "_d 
noremap <leader>x "_x 

nnoremap <leader>q vim.diagnostic.setloclist 

nnoremap <leader>rp :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left> 
vnoremap <leader>rp "5y:%s/\<C-r>5/<C-r>5/gI<Left><Left><Left> 
nnoremap <leader>rc :%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left> 
vnoremap <leader>rc "5y:%s/\<C-r>5/<C-r>5/gc<Left><Left><Left> 

inoremap <A-j> <Esc><cmd>:m .+1<CR>==gi 
inoremap <A-k> <Esc><cmd>:m .-2<CR>==gi 
nnoremap <A-j> <cmd>:m .+1<CR>== 
nnoremap <A-k> <cmd>:m .-2<CR>== 
vnoremap <A-k> ":m <-2<CR>gv=gv" 
vnoremap <A-j> ":m >+1<CR>gv=gv" 

nnoremap <leader>bd <cmd>:bd<cr> 
nnoremap <leader>bw <cmd>:w<CR>:bd<cr> 

nnoremap <leader>on <cmd>:enew<cr> 

nnoremap <leader>ot <cmd>:tabnew<cr> 
nnoremap <leader>ovt <C-W>v<cmd>:enew<cr> 
nnoremap <leader>oht <C-W>s<cmd>:enew<cr> 

