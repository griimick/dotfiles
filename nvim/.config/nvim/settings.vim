" set leader key
let g:mapleader = "\<Space>"
inoremap kj <Esc>

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

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set number relativenumber               " Show relative line numbers

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Trim trailing whitespaces on each line before writing a buffer
fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun
"autocmd BufWritePre * :call TrimWhitespace()

"vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>


" You can't stop me (force write changes to files which require write perms)
"cmap w!! w !sudo tee %

" ALE 🍻 configuration
let g:ale_linters = {'javascript': ['eslint'], 'javascript.jsx': ['eslint'] }
let g:ale_sign_error = '>>' " Less aggressive than the default '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_enter = 1 " Less distracting when opening a new file
let g:ale_lint_on_insert_leave = 1
let b:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

let g:Hexokinase_highlighters = [ 'virtual' ]
