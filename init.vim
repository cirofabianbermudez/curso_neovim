" Basic configuration
set number
set mouse=a
set showcmd
set showmatch
set cursorline
" set cursorcolumn 
" set ignorecase
set encoding=utf-8
syntax enable
set termguicolors

" Vim compatibility when no plugins
set nocompatible
set ruler
" set laststatus=2

" Use system clipboard 
set clipboard+=unnamedplus

" Tabs configuration
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Autocompletion commands
set wildmode=longest,list,full

" Fix splitting
set splitbelow splitright

" Vertically center document
" autocmd InsertEnter * norm zz

call plug#begin('~/.vim/plugged')
" ¨Plugins are install in C:\Users\<username>\.vim\plugged

" gruvbox-material theme
Plug 'sainnhe/gruvbox-material'

" nerdtree file navigator
Plug 'scrooloose/nerdtree'

" vim-tux-navigator quick movement between split windows <C-h> <C-l>
Plug 'christoomey/vim-tmux-navigator'

" vim-easymotion search and move to pattern
" Plug 'easymotion/vim-easymotion'

" indentLine, vertical line in blocks of code
Plug 'Yggdroot/indentLine'

" vim-airline status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" lualine.nvim
" Plug 'nvim-lualine/lualine.nvim'

" vim-devicons
Plug 'ryanoasis/vim-devicons' " Need al least one font of Nerd Fonts install for nerdtree
Plug 'nvim-tree/nvim-web-devicons' " For telescope

" vim-commentary
Plug 'tpope/vim-commentary' " gc<mov-cmd> / gcap / visual-mode gc / gcc

" nvim-colorizer.lua color preview
Plug 'norcalli/nvim-colorizer.lua'

" auto-pair    <M-p> toggle auto-pair Meta key or alt
Plug 'jiangmiao/auto-pairs'

" figitiv git integration
Plug 'tpope/vim-fugitive'

" vim-polyglot better syntax highlighting
Plug 'sheerun/vim-polyglot'

" vim-startify fancy start screnn for vim
Plug 'mhinz/vim-startify'

" telescope.nvim and plenary.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" LSP suport (Language Server Protocol)


call plug#end()

" --------------
" PLUGINS CONFIGURATIONS
" --------------

" Leader key configuration
let mapleader=" "

" gruvbox-material configuration
set background=dark
let g:gruvbox_material_background="medium"
colorscheme gruvbox-material
" highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b

" NERDTree Configuration
let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR>

" easy-motion configuration
" nmap <Leader>e <Plug>(easymotion-s2)

" indentLine configuration
let g:indentLine_enabled = 0 " :IndentLinesToggle
let g:indentLine_char = '┆'

" vim-airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#wordcount#enabled = 0
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline_section_z = airline#section#create(['%3p%%', ' ', '%3{line(".")}', ':' ,'%2{col(".")}']) 


" nvim-colorizer.lua configuration  :ColorizerAttachToBuffer
lua require'colorizer'.setup()
nmap <Leader>¿ :ColorizerAttachToBuffer<CR>

" telescope.nvim find files using command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fj <cmd>Telescope git_files<cr>
nnoremap <leader>fs <cmd>Telescope spell_suggest<cr>
nnoremap <leader>fc <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <leader>ft <cmd>Telescope treesitter<cr>

" vim-startify configuration
let g:startify_bookmarks = [
    \ {'v': 'C:\Users\Ciro\AppData\Local\nvim\init.vim'},
    \ {'g': 'C:\Users\Ciro\Desktop\github_projects'},
    \ {'m': 'C:\Users\Ciro\Desktop\tesis_maestria'},
    \ ]

let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   MRU Most Recently Used']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

let g:startify_fortune_use_unicode = 1

let g:startify_custom_header = [
        \ '                                   __                ',
        \ '      ___      __    ___   __  __ /\_\    ___ ___    ',
        \ '    /  _ `\  / __`\ / __`\/\ \/\ \\/\ \ /  __` __`\  ',
        \ '    /\ \/\ \/\  __//\ \L\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ',
        \ '    \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\',
        \ '     \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/',
        \ '                                                     ',
        \ ]

" treesitter configuration

" LSP configuration
lua << EOF
-- require('lualine').setup()

EOF

" --------------
" Custum bindings
" --------------

" Easy write and quit
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Easy yank all or delete all
nmap <Leader>y :%y+<CR>
nmap <Leader>yy :%d<CR>

" Easy move between tabs
nmap <Leader>k :tabnext<CR>
nmap <Leader>j :tabprevious<CR> 

" Easy move between buffers
nmap <Leader>o :bn<CR>
nmap <Leader>i :bp<CR>
nmap <Leader>p :bd<CR>

" Easy move between beginnig and end of lines
nmap <Leader>h ^
nmap <Leader>l $

" Enable Disable Auto Indent
" nmap <Leader>t :setlocal autoindent<CR>
" nmap <Leader>T :setlocal noautoindent<CR>

" Enable Disable Auto Indent
nmap <Leader>c :setlocal formatoptions-=cro<CR>
nmap <Leader>C :setlocal formatoptions=cro<CR>

" Open vimrc
nmap <Leader>1 :e $MYVIMRC<CR>

" Spell check
nmap <Leader>2 :setlocal spell spelllang=es<CR>
" nmap <Leader>s z=

" Replace shortcut  \c ignore case   \C use uppercase   gci ingnore case
nnoremap S :%s//gci<left><left><left><left>


" relative path
" :let @+ = expand("%")

" full path
" :let @+ = expand("%:p")

" just filename
" :let @+ = expand("%:t")
