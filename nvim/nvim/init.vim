" Don't try to be vi compatible
set nocompatible

" Disable backups and swap files
set nobackup
set nowritebackup
set noswapfile

" Define split direction (below, right)
set splitbelow
set splitright

" Enable relative line numbers
set relativenumber
set rnu

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Blink cursor on error instead of beeping (grr)
set visualbell
set t_vb=

if has('nvim')
    call plug#begin('~/.config/nvim/plugged')
else
    call plug#begin('~/.vim/plugged')
endif
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'

Plug 'prettier/vim-prettier'

Plug 'sheerun/vim-polyglot'

Plug 'styled-components/vim-styled-components'
call plug#end()

let NERDTreeShowHidden= 1

" CoC extensions
let g:coc_global_extensions = ['coc-solargraph', 'coc-tsserver', 'coc-json']

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Add CoC ESLint if ESLint is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

map <C-b> :NERDTreeToggle<CR>
map <Up>    :lprev<cr>
map <Down>  :lnext<cr>
map <Left>  :bprev<cr>
map <Right> :bnext<cr>

" Force Rg to ignore file names when searching for content
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Replace regular grep with rg (using vimgrep)
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Prettier command
nnoremap <silent> <leader>f :Prettier<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)nnoremap <C-H> <C-W><C-H>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" " Enable guicolors if available
if (has('termguicolors'))
  set termguicolors
endif

" Turn on syntax highlighting
syntax enable

let g:lightline = { 'colorscheme': 'material_vim' }
set laststatus=2

let &t_ZH="\<Esc>[3m"
let &t_ZR="\<Esc>[23m"
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'

colorscheme material
