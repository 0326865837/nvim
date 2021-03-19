" auto-install vim-plug
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
    Plug 'junegunn/rainbow_parentheses.vim'
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
    Plug 'https://github.com/vimwiki/vimwiki.git'
    Plug 'epilande/vim-es2015-snippets'
    Plug 'epilande/vim-react-snippets'
    Plug 'rking/ag.vim'
    Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
