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

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
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


Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'neomake/neomake'

Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'pangloss/vim-javascript' "JS highlighting
Plug 'mxw/vim-jsx' "JSX syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'


Plug 'prettier/vim-prettier', {
            \ 'do': 'yarn install',
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

source $HOME/.config/nvim/themes/airline.vim


imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

nnoremap <silent> <C-c> <Esc>
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

set whichwrap+=<,>,[,],h,l
set nobackup
set nowritebackup
set history=50
set ruler         " show the cursor position all the time
set incsearch     " do incremental searching
set laststatus=2  " luon hien thi dong trang thai
set autowrite     " Automatically :write before running commands
set autoindent   "tu dong thut dong"
set autoread
set tabstop=2  "chen 2 khoang trang cho 1 dau tab"
set shiftwidth=2 "Thay đổi số lượng ký tự khoảng trắng được chèn để thụt lề"
"set showtabline=2
set expandtab  "chuyen doi tab thanh dau cach"
set mouse=a    "bat con chuot"
set colorcolumn=+1
set relativenumber
set number           "so dong"
" set numberwidth=5
set splitbelow
set splitright
set complete+=kspell
set diffopt+=vertical
set background=dark
set encoding=UTF-8 "ho tro mau 256"
colorscheme dracula
set clipboard=unnamedplus               " Copy paste between vim and everything else

set modifiable
" set noshowmode



nnoremap <space>n :set nohlsearch!<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up>    :resize +2<CR>




au BufRead,BufNewFile .eslintrc.json setlocal filetype=json
au BufRead,BufNewFile .babelrc setlocal filetype=json
au BufRead,BufNewFile .prettierrc setlocal filetype=json

au BufRead,BufNewFile .babelrc.js setlocal filetype=javascript
au BufRead,BufNewFile .sequelizerc setlocal filetype=javascript
au BufRead,BufNewFile *.hbs setlocal filetype=html


" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
"let g:is_posix = 1

" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv

" Remove highlight
map <C-h> :nohl<CR>

" fzf
noremap ` :Files<CR>
noremap ; :Buffers<CR>

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

"let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
"-g '!{node_modules,.git}'

" Customize fzf colors to match your color scheme
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

"vim commentary
function! Comment()
    if (mode() == "n" )
        execute "Commentary"
    else
        execute "'<,'>Commentary"
    endif
endfunction
vnoremap <silent> <space>/ :call Comment()




"COC
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
            \ 'coc-highlight',
            \ 'coc-markdownlint',
            \ 'coc-stylelint',
            \ 'coc-snippets',
            \ 'coc-sql',
            \ 'coc-tailwindcss',
            \ 'coc-translator',
            \ 'coc-yank',
            \ 'coc-emmet'
            \ ]



"setting for eslint and prettier
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
    let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
    let g:coc_global_extensions += ['coc-eslint']
endif
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction




" Explorer
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
"nmap <silent> <space>e :CocCommand explorer<CR>
nnoremap <silent> <leader>e :CocCommand explorer<CR>
" nmap <space>f :CocCommand explorer --preset floatingRightside<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif



"start-screen


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



"git-guitter


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



"closetags

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.cpp'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 0

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'



"floaterm

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





"WhichKey

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


" Single mappings
let g:which_key_map['/'] = [ ':call Comment()'  , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                  , 'commands' ]
let g:which_key_map[','] = [ 'Startify'                   , 'start screen' ]
let g:which_key_map['d'] = [ ':bd'                        , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']

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


" Blamer (linke gitlens)
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_prefix = ' > '




" auto format

noremap <F6> :Autoformat<CR>
au BufWrite * :Autoformat


" when running at every change you may want to disable quickfix
"let g:prettier#quickfix_enabled = 0

" autocmd TextChanged *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
" InsertLeave


" Max line length that prettier will wrap on: a number or 'auto' (use
" textwidth).
" default: 'auto'
let g:prettier#config#print_width = 'auto'

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = 'auto'

" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 'auto'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
" (let prettier choose).
" default: ''
let g:prettier#config#parser = ''

" cli-override|file-override|prefer-file
" default: 'file-override'
let g:prettier#config#config_precedence = 'file-override'

" always|never|preserve
" default: 'preserve'
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
" default: 'css'
let g:prettier#config#html_whitespace_sensitivity = 'css'

" false|true
" default: 'false'
let g:prettier#config#require_pragma = 'false'

" Define the flavor of line endings
" lf|crlf|cr|all
" defaut: 'lf'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')
