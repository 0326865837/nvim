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
Plug 'maxmellon/vim-jsx-pretty'
Plug 'suy/vim-context-commentstring'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'asvetliakov/vim-easymotion'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }
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
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'neomake/neomake'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'rking/ag.vim'
Plug 'ap/vim-css-color'
Plug 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plug 'cakebaker/scss-syntax.vim'
Plug 'APZelos/blamer.nvim'
Plug 'Chiel92/vim-autoformat'
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


" bind \ (backward slash) to grep shortcut
nnoremap <C-k> /<C-R><C-W><CR>
nnoremap \ :Ag<SPACE>


nnoremap <space>n :set nohlsearch!<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up>    :resize +2<CR>


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
            \ 'coc-prettier',
            \ 'coc-json',
            \ 'coc-pairs',
            \ 'coc-emoji',
            \ 'coc-floaterm',
            \ 'coc-sh',
            \ 'coc-eslint'
            \ ]


"
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

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    " autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

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

" Snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)



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


"sneak
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" imediately move tot the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

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


"rnvimr
let g:rnvimr_ex_enable = 1

let g:rnvimr_draw_border = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_pick_enable = 1

" Make Neovim to wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_bw_enable = 1

" nmap <leader>r :RnvimrToggle<CR>

let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'
" \ --cmd="set draw_borders separators"'

let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': float2nr(round(0.6 * &columns)),
            \ 'height': float2nr(round(0.6 * &lines)),
            \ 'col': float2nr(round(0.2 * &columns)),
            \ 'row': float2nr(round(0.2 * &lines)),
            \ 'style': 'minimal' }

let g:rnvimr_presets = [
            \ {'width': 0.800, 'height': 0.800}]



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
let g:which_key_map['='] = [ '<C-W>='                     , 'balance windows' ]
let g:which_key_map[','] = [ 'Startify'                   , 'start screen' ]
let g:which_key_map['c'] = [ ':Codi!!'                    , 'virtual repl']
let g:which_key_map['d'] = [ ':bd'                        , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['q'] = [ 'q'                          , 'quit' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'              , 'ranger' ]
let g:which_key_map['S'] = [ ':SSave'                     , 'save session' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['W'] = [ 'w'                          , 'write' ]
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

" Group mappings

" a is for actions
let g:which_key_map.a = {
            \ 'name' : '+actions' ,
            \ 'c' : [':ColorizerToggle'        , 'colorizer'],
            \ 'n' : [':set nonumber!'          , 'line-numbers'],
            \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
            \ 's' : [':let @/ = ""'            , 'remove search highlight'],
            \ 't' : [':FloatermToggle'         , 'terminal'],
            \ 'v' : [':Vista!!'                , 'tag viewer'],
            \ }


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



" t is for terminal
let g:which_key_map.t = {
            \ 'name' : '+terminal' ,
            \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
            \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
            \ 'g' : [':FloatermNew lazygit'                           , 'git'],
            \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
            \ 'n' : [':FloatermNew node'                              , 'node'],
            \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
            \ 'p' : [':FloatermNew python'                            , 'python'],
            \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
            \ 't' : [':FloatermToggle'                                , 'toggle'],
            \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
            \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
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



let g:ag_working_path_mode="r"




" auto format

noremap <F6> :Autoformat<CR>
au BufWrite * :Autoformat
