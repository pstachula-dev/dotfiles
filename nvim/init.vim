source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/coc-config.vim

set t_Co=256
colorscheme nord
syntax enable

set cursorline
set background=dark
set mouse=a
set mouse=nicr
set encoding=UTF-8
set nolist
set termguicolors
set number
set ruler
set wrap
set ignorecase
set incsearch


" Remap ESC to ii
imap jj <Esc>
imap cll console.log()<Esc><S-f>(a

nmap <C-T> :NERDTreeToggle<CR>
nmap <C-Q> :q<CR>
nmap <C-S> :w<CR>
nmap <C-G> :LazyGit<CR>
"nmap <C-P> :Telescope find_files<CR>
"nmap <C-F> :Telescope live_grep<CR>
nmap <C-P> :GFiles<CR>
nmap <C-F> :Rg<CR>
nmap <C-B> :Buffers<CR>

nmap <C-Up> :wincmd k<CR>
nmap <C-Down> :wincmd j<CR>
nmap <C-Left> :wincmd h<CR>
nmap <C-Right> :wincmd l<CR>
nmap <S-Up> :t-<CR>
nmap <S-Down> :t.<CR>

nmap tf :NERDTreeFind<CR>
nmap ff :CocCommand eslint.executeAutofix<CR>
nmap bb :GitBlameToggle<CR>

let g:gitblame_enabled = 0
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
