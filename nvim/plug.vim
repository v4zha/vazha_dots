call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf'
	Plug 'dense-analysis/ale'
	Plug 'bling/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'airblade/vim-gitgutter'
	Plug 'airblade/vim-rooter'
	Plug 'ervandew/supertab'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sheerun/vim-polyglot'
    Plug 'glepnir/dashboard-nvim'
	Plug  'dracula/vim', { 'as': 'dracula' }
	Plug 'preservim/nerdcommenter'

	"rust plugins
	Plug 'rust-lang/rust.vim'


call plug#end()
colorscheme dracula
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
