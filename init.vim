"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" Always source these
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'asvetliakov/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'luochen1990/rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'francoiscabrol/ranger.vim'

" Plug 'rbgrouleff/bclose.vim'
Plug 'Chiel92/vim-autoformat'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'
Plug 'junegunn/gv.vim'


Plug 'gregsexton/matchtag'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'neomake/neomake'

Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'pangloss/vim-javascript' "JS highlighting
Plug 'jelera/vim-javascript-syntax'
Plug 'honza/vim-snippets'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'

Plug 'leafOfTree/vim-vue-plugin'

Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'

Plug 'prettier/vim-prettier', { 'do': 'yarn install'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'joshdick/onedark.vim'

"rest-client
Plug 'diepm/vim-rest-console'

"Pluggin for php

Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
call plug#end()



set whichwrap+=<,>,[,],h,l
" set history=50
set mouse=a    "bat con chuot"

set cursorline
hi CursorLineNR cterm=bold
augroup CLNRSet
  autocmd! ColorScheme * hi CursorLine ctermbg=black
augroup END number
set guicursor+=n-v-c:blinkon5

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif





set hidden
set showcmd
colorscheme onedark
syntax on
set clipboard=unnamedplus
set autoread
set autowrite

"encoding
set encoding=UTF-8 "ho tro mau 256"
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

"tab
set tabstop=2
set shiftwidth=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"
set nobackup

"Viusa setting
set number
set ruler
syntax on
set relativenumber
set colorcolumn=0

"--------------- custom short cut----------------------
nnoremap <space>n :set nohlsearch!<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up>    :resize +2<CR>

imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
" g Leader key
let mapleader=" "

" Better indenting
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

nnoremap <silent> <C-c> <Esc>
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

"Mappings
noremap <leader>h :<c-u>split<cr>
noremap <leader>v :<c-u>vsplit<cr>



" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv


" Remove highlight
map <C-h> :nohl<CR>


au BufRead,BufNewFile .eslintrc.json setlocal filetype=json
au BufRead,BufNewFile .babelrc setlocal filetype=json
au BufRead,BufNewFile .prettierrc setlocal filetype=json

au BufRead,BufNewFile .babelrc.js setlocal filetype=javascript
au BufRead,BufNewFile .sequelizerc setlocal filetype=javascript
au BufRead,BufNewFile *.hbs setlocal filetype=html




"***********************************************************
"Custom config
"***********************************************************
"javascript
let g:javascript_enable_domhtmlcss = 1

"vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd filetype javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
augroup end


"-----------------------vim-airline-----------------------------
"



let g:airline#extensions#virtualenv#enabled = 1


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

"vim-airline
let g:airline_theme = 'onedark'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1





" ---------------------------------fzf---------------------------------
noremap ` :Files<CR>
noremap ; :Buffers<CR>

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

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



"styled component
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"----------------------------vim commentary--------------------
function! Comment()
  if (mode() == "n" )
    execute "Commentary"
  else
    execute "'<,'>Commentary"
  endif
endfunction
noremap <silent> <leader>/ :call Comment() <CR>




"----------------------------COC--------------------------------
let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-actions',
      \ 'coc-lists',
      \ 'coc-tsserver',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-cssmodules',
      \ 'coc-explorer',
      \ 'coc-json',
      \ 'coc-pairs',
      \ 'coc-emoji',
      \ 'coc-floaterm',
      \ 'coc-sh',
      \ 'coc-eslint',
      \ 'coc-markdownlint',
      \ 'coc-stylelint',
      \ 'coc-snippets',
      \ 'coc-sql',
      \ 'coc-tailwindcss',
      \ 'coc-translator',
      \ 'coc-yank',
      \ ]




"------------------------ Explorer-----------------------------------
let g:coc_explorer_global_presets = {
      \   'floating': {
      \      'position': 'floating',
      \   },
      \   'floatingLeftside': {
      \      'position': 'floating',
      \      'floating-position': 'left-center',
      \      'floating-width': 30,
      \   },
      \   'floatingRightside': {
      \      'position': 'floating',
      \      'floating-position': 'right-center',
      \      'floating-width': 30,
      \   },
      \   'simplify': {
      \     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
      \   }
      \ }
nnoremap <space>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif



"------------------------start-screen---------------------------------


let g:startify_custom_header = [
      \ '       _  __     _         __  ___         __     ___ ',
      \ '      / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
      \ '     /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/ ',
      \ '    /_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/ ',
      \]

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']                        },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']                     },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
      \ ]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_bookmarks = [
      \ { 'c': '~/.config/i3/config' },
      \ { 'i': '~/.config/nvim/init.vim' },
      \ { 'z': '~/.zshrc' },
      \ '~/Documents',
      \ '~/Downloads',
      \ '~/Pics',
      \ ]

let g:startify_enable_special = 0



"---------------------------git-guitter-----------------------------

let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '+'
let g:gitgutter_sign_removed            = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed   = '-'

let g:gitgutter_enabled = 1

highlight GitGutterAdd    guifg=#00ff00 ctermfg=2
highlight GitGutterChange guifg=#fff000 ctermfg=3
highlight GitGutterDelete guifg=#ff0000 ctermfg=1




" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompt
let g:sneak#prompt = '🔎 '



"---------------------------closetags------------------------------
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js, *.vue'
" let g:closetag_xhtml_filenames = '*.xhtml,*.cpp'
" let g:closetag_filetypes = 'html,xhtml,phtml'
" let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 0

let g:closetag_shortcut = '>'
" let g:closetag_close_shortcut = '<leader>>'



"-----------------------------floaterm-----------------------------

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.9
let g:floaterm_height=0.3
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
let g:floaterm_position="bottom"
nnoremap   <silent>   <F5>   :FloatermKill<CR>
tnoremap   <silent>   <F5>   <C-\><C-n>:FloatermKill<CR>





"--------------------------WhichKey---------------------------------

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


let g:which_key_map['.'] = [ ':e $MYVIMRC'                , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                  , 'commands' ]
let g:which_key_map[','] = [ 'Startify'                   , 'start screen' ]
let g:which_key_map['d'] = [ ':bd'                        , 'delete buffer']
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]

" Group mappings

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }
call which_key#register('<Space>', "g:which_key_map")


"----------------Rainbow------------------------------


let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss setl iskeyword+=@-@
let g:rainbow_conf = {
      \ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \ 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
      \ 'guis': [''],
      \ 'cterms': [''],
      \ 'operators': '_,_',
      \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \ 'separately': {
      \   '*': {},
      \   'markdown': {
      \     'parentheses_options': 'containedin=markdownCode contained',
      \   },
      \   'lisp': {
      \     'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3']
      \   },
      \   'haskell': {
      \     'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'],
      \   },
      \   'vim': {
      \     'parentheses_options': 'containedin=vimFuncBody',
      \   },
      \   'perl': {
      \     'syn_name_prefix': 'perlBlockFoldRainbow',
      \   },
      \   'stylus': {
      \     'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],
      \   },
      \ },
      \}


"------------------ Blamer (linke gitlens)------------------
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_prefix = ' > '




" -----------------auto format && prettier----------------

noremap <F6> :Autoformat <CR>
"auto format when saved file
au BufWrite * :Autoformat


let g:formatters_vue = ['eslint_local', 'stylelint']
let g:run_all_formatters_vue = 1


" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

" autocmd TextChanged *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.cpp PrettierAsync

" noremap <F7> :PrettierAsync <CR>

let g:prettier#config#print_width = '100'
let g:prettier#config#tab_width = 'auto'
let g:prettier#config#use_tabs = 'auto'
let g:prettier#config#parser = ''
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#prose_wrap = 'preserve'
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#require_pragma = 'false'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'crlf')
"----------------------------------------------------




if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif



"--------------------------One Dark themes config--------------------
if (has("autocmd"))
  augroup colorextend
    autocmd!
    " Make `Function`s boldn GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
    " Override the `Statement` foreground color in 256-color mode
    autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
    " Override the `Identifier` background color in GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#000000" } })
  augroup END
endif


hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=0
let g:onedark_termcolors=256


let g:vrc_split_request_body = 0
set ft=rest
let g:vrc_curl_opts = {
      \ '--connect-timeout' : 10,
      \ '-b': '/path/to/cookie',
      \ '-c': '/path/to/cookie',
      \ '-L': '',
      \ '-i': '',
      \ '--max-time': 60,
      \ '--ipv4': '',
      \ '-k': '',
      \}



"-------------Vue config
let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css', 'scss'],
      \   'docs': 'markdown',
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}

"---------------bash language server-------------------

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'allowlist': ['sh'],
        \ })
endif
