let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NerdTreeIgnore=[]
let g:NerdTreeStatuslin=''

let mapleader=","

nnoremap <silent> <C-b> :NERDTreeToggle<CR>
noremap <Esc> <C-\><C-n>

function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

nnoremap <c-n> :call OpenTerminal()<CR>

"Map Windows Navigate"
noremap <C-H> <C-W><C-H>
noremap <C-L> <C-W><C-L>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>

"Window Quit"
noremap <C-Q> <C-W>q
noremap <C-Q>q <C-W>q!

"Coc AutoComplete"
inoremap <expr> <C-J> pumvisible() ? "\<C-N>" : "<C-J>"
inoremap <expr>  <C-K> pumvisible() ? "\<C-P>" : "<C-K>"

"Change Buffer"
noremap <Leader>n :bn<CR>
noremap <Leader>p :bp<CR>

noremap K { 
noremap J }
noremap H ^
noremap L $

"View Buffer"
nnoremap <Leader>b :buffers<CR>:buffer<Space>
"Clear screen"
nnoremap <silent> <Leader>c :noh<CR><CR>
nnoremap <C-p> :FZF<CR>
nnoremap <Leader>f : FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

"Bracket completion 
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


