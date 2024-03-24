"
" =====================================================================
" =========================== KICKSTART.VIM ===========================
" =====================================================================

"  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
let mapleader=' '
let maplocalleader = ' '

let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" NOTE: Here is where you install your plugins.
call plug#begin()

" nerd tree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'rhysd/vim-healthcheck'

" catppuccin
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Useful plugin to show you pending keybinds.
Plug 'liuchengxu/vim-which-key'

" Set airline as statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Add indentation guides even on blank lines
Plug 'Yggdroot/indentLine'

" "gc" to comment visual regions/lines
Plug 'tpope/vim-commentary'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" ========================================================================================
" =========================== Setting sensible default options ===========================
" ========================================================================================

" switch on file type detection, without syntax highlighting
filetype on
" start using syntax highlighting
syntax on
" automatically set the indent of a new line
set autoindent
" automatically read a file when it was modified outside of Vim
set autoread
" "dark" or "light"; the background color brightness
set background=dark
" specifies what <BS>, CTRL-W, etc. can do in Insert mode
set backspace=indent,eol,start
" do not ring the bell for these reasons
set belloff=all
" include "lastline" to show the last line even if it doesn't fit
" include "uhex" to show unprintable characters as a hex number
set display=lastline
" character encoding used in Vim: "latin1", "utf-8",
set encoding=utf-8
" don't unload a buffer when no longer shown in a window
" (Allow opening other files w/o saving current buffer)
set hidden
" how many command lines are remembered
set history=10000
" highlight all matches for the last used search pattern
set hlsearch
" show match for partly typed search command
set incsearch
" use two spaces after '.' when joining a line
set nojoinspaces
" 0, 1 or 2; when to use a status line for the last window
set laststatus=2
" list of strings used for list mode
set listchars=tab:>\ ,trail:-,nbsp:+
" show cursor position below each window
set ruler
" show (partial) command keys in location given by 'showcmdloc'
set showcmd
" a <Tab> in an indent inserts 'shiftwidth' spaces
"  NOTE: See `:help tabstop` to learn how tabs in Vim work
set smarttab
" many jump commands move the cursor to the first non-blank
set nostartofline
" "useopen" and/or "split"; which window to use when jumping to a buffer
set switchbuf=uselast
" use menu for command line completion
set wildmenu
" specifies how command line completion is done
set wildoptions=pum,tagfile


" [[ Settings other options ]]
" NOTE: You can change these options as you wish!

" Make line numbers default
set number
set relativenumber

" Enable mouse mode
set mouse=a
set clipboard=unnamedplus
set breakindent
set ignorecase
set smartcase

" Keep signcolumn on by default
set signcolumn=yes

" Decrease update time
set updatetime=250
set timeoutlen=300

" Set completeopt to have a better completion experience
set completeopt=menuone,noselect
" NOTE: You should make sure your terminal supports this
set termguicolors

" [[ Basic Keymaps ]]

" Keymaps for better default experience
nnoremap <silent> <Space> <Nop>
xnoremap <silent> <Space> <Nop>

" keymaps
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>x :bdelete<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <leader>qa :qa!<CR>

" Remap for dealing with word wrap
nnoremap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <silent> j v:count == 0 ? 'gj' : 'j'


" [[ Configure plugins ]]
" Set colorscheme
colorscheme catppuccin_mocha
" Characters to render for indentation guide
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1

" [[ Configure vim-which-key ]]
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '<Space>'<CR>

" [[ Configure fzf.vim ]]
" See `:help fzf-vim`

nmap <leader>? :History<CR>
let g:which_key_map['?'] = '[?] Find recently opened files'
nmap <leader><space> :Buffers<CR>
let g:which_key_map[' '] = '[ ] Find existing buffers'
nmap <leader>/ :BLines<CR>
let g:which_key_map['/'] = '[/] Fuzzily search in current buffer'

nmap <leader>gf :GFiles<CR>
let g:which_key_map.g.f = 'Search [G]it [F]iles'
nmap <leader>sf :Files<CR>
let g:which_key_map.s.f = '[S]earch [F]iles'
nmap <leader>sh :Helptags<CR>
let g:which_key_map.s.h = '[S]earch [H]elp'
