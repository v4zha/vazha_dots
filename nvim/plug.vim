call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'arcticicestudio/nord-vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf'
	Plug 'LaTeX-Box-Team/LaTeX-Box'
	Plug 'bling/vim-airline'
	Plug 'airblade/vim-gitgutter'
	Plug 'ervandew/supertab'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
	Plug 'sheerun/vim-polyglot'
    Plug 'glepnir/dashboard-nvim'
call plug#end()
colorscheme nord
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
