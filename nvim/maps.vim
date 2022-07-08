let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NerdTreeIgnore=[]
let g:NerdTreeStatuslin=''

let mapleader=","

"set splitright
"set splitbelow

nnoremap <silent> <C-b> :NERDTreeToggle<CR>
noremap <Esc> <C-\><C-n>

function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

nnoremap <c-n> :call OpenTerminal()<CR>

"tnoremap <A-h> <C-\><C-n><C-w>h
"tnoremap <A-j> <C-\><C-n><C-w>j
"tnoremap <A-k> <C-\><C-n><C-w>k
"tnoremap <A-l> <C-\><C-n><C-w>l
"nnoremap <A-h> <C-w>h
"nnoremap <A-j> <C-w>j
"nnoremap <A-k> <C-w>k
"nnoremap <A-l> <C-w>l

noremap <C-H> <C-W><C-H>
noremap <C-L> <C-W><C-L>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-Q> <C-W>q
noremap <C-Q>q <C-W>q!

inoremap <expr> j pumvisible() ? "\<C-N>" : "<C-J>"
inoremap <expr> k pumvisible() ? "\<C-P>" : "<C-K>"

noremap <Leader>n :bn<CR>
noremap <Leader>n :bn<CR>
noremap <Leader>p :bp<CR>

noremap K { 
noremap J }
noremap H ^
noremap L $


nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <silent> <Leader>c :noh<CR><CR>
nnoremap <C-p> :FZF<CR>
nnoremap <Leader>f : FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

