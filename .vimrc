"Configure Vundle"
set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard=unnamedplus
set colorcolumn=80
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'Valloric/YouCompleteMe'
Plugin 'zxqfl/tabnine-vim'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ " Put your non-Plugin stuff after this line

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Enable line number:
:set nu

execute 'silent !print "\e[?2004l"'

" CTRL + O show tree of files
map <C-o> :NERDTreeToggle<CR>

" CTRL + P find files
map <C-p> :FZF<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"CTRL+ 0  to quit editing"
" Lightline makes your vim more beautiful
Plug 'itchyny/lightline.vim'
Plug 'dikiaap/minimalist'
set laststatus=2
" Make sure you use single quotes
Plug 'https://github.com/editorconfig/editorconfig-vim'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/vim-python/python-syntax'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Vue Syntax Highlighting:
Plug 'posva/vim-vue'
" Javascript Syntax Highlights:
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Svelte syntax highlighting
Plug 'evanleck/vim-svelte'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
"set rtp+=~/.vim/bundle/YouCompleteMe
set t_Co=256
syntax on
colorscheme minimalist
let NERDTreeShowHidden=1
