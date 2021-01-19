"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" Always source these
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim
if exists('g:vscode')
  source $HOME/.config/nvim/plug-config/easymotion.vim
else
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/plug-config/rnvimr.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/vim-commentary.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/quickscope.vim
  source $HOME/.config/nvim/plug-config/vim-wiki.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
endif

set whichwrap+=<,>,[,],h,l
let mapleader = ","
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " luon hien thi dong trang thai
set autowrite     " Automatically :write before running commands
set autoindent   "tu dong thut dong"
set smartindent
set autoread
set autowrite
set tabstop=2  "chen 2 khoang trang cho 1 dau tab"
set shiftwidth=2 "Thay đổi số lượng ký tự khoảng trắng được chèn để thụt lề"
set showtabline=2
set shiftround
set expandtab  "chuyen doi tab thanh dau cach"
"set textwidth=80
set mouse=a    "bat con chuot"
set colorcolumn=+1
set nojoinspaces
set relativenumber
set number           "so dong"
set numberwidth=5
set splitbelow
set splitright
set complete+=kspell
set diffopt+=vertical
set clipboard=unnamed
set lazyredraw
set termguicolors
set background=dark
set encoding=UTF-8 "ho tro mau 256"
colorscheme dracula



au BufRead,BufNewFile .eslintrc.json setlocal filetype=json
au BufRead,BufNewFile .babelrc setlocal filetype=json
au BufRead,BufNewFile .prettierrc setlocal filetype=json

au BufRead,BufNewFile .babelrc.js setlocal filetype=javascript
au BufRead,BufNewFile .sequelizerc setlocal filetype=javascript
au BufRead,BufNewFile *.hbs setlocal filetype=html

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv

" Remove highlight
map <C-h> :nohl<CR>

" fzf
noremap ` :Files<CR>
noremap ; :Buffers<CR>

" bind \ (backward slash) to grep shortcut
nnoremap <C-k> /<C-R><C-W><CR>
nnoremap \ :Ag<SPACE>

" Lightline
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status'
      \ },
      \ }

set modifiable

nnoremap <leader>ag :Ag
let g:ag_working_path_mode="r"
nnoremap <leader>; mlA;<esc>`l
nnoremap <space><space> :set nohlsearch!<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up>    :resize +2<CR>


nnoremap <space><space> :set nohlsearch!<CR>

