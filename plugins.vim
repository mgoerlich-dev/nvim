" Plugins
"

" {{{ vim-plug
" 
" Check wether vim-plug is installed and install if required
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
  if executable('curl')
    let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
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
Plug 'MaxSt/FlatColor'         " Colorscheme
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

" Close braces and stuff
Plug 'cohama/lexima.vim'

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
autocmd FileType html,css,eruby EmmetInstall
let g:user_emmet_leader_key = '<leader>e'

" (Github) Markdown Preview
let vim_markdown_preview_github = 1
let vim_markdown_preview_browser = 'Firefox.app'
let vim_markdonw_preview_temp_file = 1

" Vue
au FileType vue syntax sync minlines=400
au BufNewFile,BufRead *.vue set ft=vue

" Neomake
let g:neomake_javascript_enabled_makers = [ 'standard' ]

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 1
let g:airline_powerline_fonts = 0

" Activate deoplete
let g:deoplete#enable_at_startup = 1

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSinppetsDir="~/.config/nvim/ultisnips/"

" NERDTree
let g:NERDTreeWinPos="right"
