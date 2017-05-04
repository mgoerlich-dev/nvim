" Plugins
"

" {{{ vim-plug
"
" Check wether vim-plug is installed and install if required
let s:plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(s:plugpath)
  if executable('curl')
    let s:plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    call system('curl -fLo ' . shellescape(s:plugpath) . ' --create-dirs ' . s:plugurl)
    if v:shell_error
      echom "Error downloading vim-plug. Please install it manually.\n"
      exit
    endif
  else
    echom "vim-plug not installed. Please install it manually or install curl.\n"
    exit
  endif
endif

call plug#begin()
Plug 'dikiaap/minimalist'      " Colorscheme
Plug 'vim-airline/vim-airline' " Statusbar

" Linting, making, essentially a task runner
Plug 'neomake/neomake'

" Code snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Directory Explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Code completion
Plug 'mattn/emmet-vim'

" Fuzzy file finder
Plug 'cloudhead/neovim-fuzzy'

" Close braces and stuff
Plug 'cohama/lexima.vim'

" Comment helpers
Plug 'scrooloose/nerdcommenter'

" Languages/Frameworks
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'digitaltoad/vim-pug'
Plug 'ap/vim-css-color'
call plug#end()
" }}}

" Emmet
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key = '<leader>e'

" Neomake
let g:neomake_javascript_enabled_makers = [ 'standard' ]

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':~:.'
let g:airline#extensions#neomake#enabled = 1
let g:airline_powerline_fonts = 0

" Activate deoplete
let g:deoplete#enable_at_startup = 1

" UltiSnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSinppetsDir='~/.config/nvim/ultisnips/'

" NERDTree
let g:NERDTreeWinPos='right'

" Lexima
let g:lexima_map_escape = 'jk'
