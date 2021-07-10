call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/lightline.vim'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    Plug 'f-person/git-blame.nvim'
call plug#end()

" My plugins conf

let g:gitblame_date_format = '%r'
let g:gitblame_enabled = 0

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier'
  \ ]

let g:lightline = {
     \ 'colorschme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

