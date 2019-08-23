syntax on
filetype plugin indent on
set colorcolumn=81
set incsearch
set number
set expandtab
set shiftwidth=2
set tabstop=2
set backspace=2
set showtabline=2
set autoindent
set smartindent
set textwidth=80
set wrapmargin=2
set showmatch
set hlsearch
set incsearch
set smartcase
set scrolloff=5
set laststatus=2
set spell spelllang=en_us
set nobackup
set noswapfile
set autochdir
set undofile
set visualbell
set splitbelow
set splitright
set nocompatible
set hidden

autocmd BufWritePre * :%s/\s\+$//e

colorscheme default256

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeWinSize=50
map <C-\> :NERDTreeToggle<CR>

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_loc_list_height=3
let g:syntastic_css_checkers=["stylelint"]
let g:syntastic_javascript_checkers=["eslint"]
let g:syntastic_ruby_checkers=["mri", "rubocop"]

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'wincent/command-t'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ctrlspace/vim-ctrlspace'
call vundle#end()

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:CtrlSpaceDefaultMappingKey = "<C-space>"

" function! GitBranch()
"  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction

"function! StatuslineGit()
"  let l:branchname = GitBranch()
"  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction

"set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\
