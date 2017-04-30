" Switch cursor based on mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2

" disable background color erase
if &term =~'256color'
  set t_ut=
endif

" enable 24 bit color support if supported
if (has('mac') && empty($TMUX) && has("termguicolors"))
  set termguicolors
endif

syntax on
colorscheme flatcolor "Base2Tone_EveningDark

let g:flatcolor_termcolors=16

" Make comments and htmlArgs italic
highlight Comment cterm=italic gui=italic
highlight htmlArg cterm=italic gui=italic

" Show relative line numbers, but also show the current line number absolute
set number
set relativenumber

set nowrap

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
set smartindent

" Show invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" higlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" backspace behavior
set backspace=indent,eol,start

" Smart folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldcolumn=2

" Use system clipboard
set clipboard+=unnamedplus

set laststatus=2 " Always show statusline
set wildmenu " Enhance CLI completion
set wildmode=list:longest " complete files like a shell
set hidden " Allow hidden buffers
set showcmd " Show incomplete commands
set noshowmode " don't show which mode diabled for Airline
set shell=$SHELL
set cmdheight=1 " command bar height
set title " set terminal title

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw

set magic " Magic RegExp

set showmatch " show matching braces
set mat=2 " how fast to blink

" error bells
set noerrorbells
set visualbell
set tm=500


if has('mouse')
  set mouse=a
endif

" Show me where I should break my lines
set colorcolumn=80,100,120

" highlight strings inside C comments
let c_comment_strings=1

filetype plugin indent on
