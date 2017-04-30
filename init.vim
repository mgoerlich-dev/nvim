" My nvim confrig, heavily inspired by @nicknisi approach
set encoding=utf-8

"" Basic stuff:

" Fix some common typos
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter
abbr applicatoin application

set nocompatible
set autoread

set history=1000
set textwidth=80

" Persistent undo
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=1000
set undoreload=10000

" Backups
set backup
set backupdir=$HOME/.config/nvim/backups/

" Swap file directory
set directory^=$HOME/.config/nvim/tmp/

if (has('nvim'))
  " show results of substition as they're happening
  " but don't open a split
  set inccommand=nosplit
endif

" In Virtualblock mode, move free
set virtualedit=block

" "correct" splitting
set splitbelow
set splitright

"" The rest
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/ui.vim
source ~/.config/nvim/autocommands.vim

