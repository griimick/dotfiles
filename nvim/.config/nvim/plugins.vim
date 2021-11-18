" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'

	" File Explorer
	Plug 'scrooloose/NERDTree'

	" Auto pairs for '(' '[' '{'
	"Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/rainbow_parentheses.vim'

	" Gruvbox 💖
	Plug 'gruvbox-community/gruvbox'

	" Airline
	Plug 'vim-airline/vim-airline'

	" FZF 🔥
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'

	" TPOPE 🤴
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'

	" Ale 🍻
	Plug 'dense-analysis/ale'

	Plug 'voldikss/vim-floaterm'

	Plug 'godlygeek/tabular'


call plug#end()
