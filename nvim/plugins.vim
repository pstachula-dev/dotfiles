call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/lightline.vim'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'akinsho/bufferline.nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'f-person/git-blame.nvim'
    Plug 'kdheepak/lazygit.nvim'
call plug#end()

"lua << EOF
"require('telescope').setup{
"    defaults = { file_ignore_patterns = {"node_modules"} }
"}
"EOF

let g:gitblame_date_format = '%r'

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
