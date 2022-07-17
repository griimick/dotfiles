"                                         
"              ▄▄██████████▄▄             
"              ▀▀▀   ██   ▀▀▀             
"      ▄██▄   ▄▄████████████▄▄   ▄██▄     
"    ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   
"   ████▄ ▄███▀              ▀███▄ ▄████  
"  ███▀█████▀▄████▄      ▄████▄▀█████▀███ 
"  ██▀  ███▀ ██████      ██████ ▀███  ▀██ 
"   ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  
"      ███           ▀▀           ███     
"      ██████████████████████████████     
"  ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ 
"  ███  ███ ███   ██    ██   ███▄███  ███ 
"  ▀██▄████████   ██    ██   ████████▄██▀ 
"   ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  
"    ▀███▄  ▀███████    ███████▀  ▄███▀   
"      ▀███    ▀▀██████████▀▀▀   ███▀     
"        ▀     ▄▄▄   ██   ▄▄▄      ▀      
"              ▀▀███████████▀▀            
"                                         
" Author: Soumik 'griimick' Pradhan
" This is a part of my dotfiles: https://github.com/griimick/dotfiles

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
"set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
"set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory
set incsearch                           " highlight the search results as you type


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #CUSTOM MAPPINGS

" set leader key
let g:mapleader = "\<Space>"

" clear search highlights
nnoremap <Leader><Leader> :nohlsearch<CR><C-L>

" leader+ s to quick save in normal mode
noremap <Leader>s :update<CR>

" type kj to escape from insert mode
inoremap kj <Esc>

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Tab/Shift-Tab in general mode will move to next/prev buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>


" Better tabbing (select in visual mode and use '>' and '<')
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Easy to resize vertical splits
nnoremap <Leader>= :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Open netrw file explorer on the right side
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" vim-commentary
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" shift lines in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" fzf mappings
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<CR>".expand('%:h')

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #AUTOCMD CUSTOM

" Use 'relative' number in Normal mode and 'norelative' number in Insert mode
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set number relativenumber  " Show relative line numbers

" Trim trailing whitespaces on each line before writing a buffer
fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

"autocmd BufWritePre * :call TrimWhitespace()

" You can't stop me (force write changes to files which require write perms)
cmap w!! w !sudo tee %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" syntax highlighting
Plug 'sheerun/vim-polyglot'
" bracket pair same color
Plug 'junegunn/rainbow_parentheses.vim'
" BESTEST colorscheme
Plug 'gruvbox-community/gruvbox'
" status line
Plug 'vim-airline/vim-airline'
" fuzzy find my way out of my problems
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" comment shortcut
Plug 'tpope/vim-commentary'
" git gud plugin
Plug 'tpope/vim-fugitive'
" Asynchronous Lint Engine
Plug 'dense-analysis/ale'
" Align by semicolor or equality symbols
Plug 'godlygeek/tabular'

if (has("nvim"))
	" GitHub copilot works in nvim only
	Plug 'github/copilot.vim'
endif

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #ALE 🍻 config
"
let g:ale_linters = {'javascript': ['eslint'], 'javascript.jsx': ['eslint'] }
let g:ale_sign_error = '>>' " Less aggressive than the default '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_enter = 1 " Less distracting when opening a new file
let g:ale_lint_on_insert_leave = 1
let b:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #POLYGOT config

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #AIRLINE config

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Always show tabs
set showtabline=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #GRUVBOX config

syntax on
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
	hi LineNr ctermbg=NONE guibg=NONE
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #FZF config

let g:fzf_history_dir = '~/.local/share/fzf-history'

" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_COMMAND='rg --files --follow -g "!{.git,output,**/node_modules/**,*.swp,dist,*.coffee}/*" 2> /dev/null'
let $FZF_DEFAULT_OPTS = '--bind=ctrl-q:backward-kill-word --layout=reverse --info=inline'

"Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

""Get Files
"command! -bang -nargs=? -complete=dir Files
"	\ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!*.{min.js,swp,o,zip}"
  \ -g "!{.git,node_modules,vendor}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
