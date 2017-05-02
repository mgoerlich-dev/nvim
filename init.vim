" My nvim confrig, heavily inspired by @nicknisi approach
set encoding=utf-8

" Fix some common typos
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter
abbr applicatoin application

" Sync buffer with fs
set autoread

set history=1000
set textwidth=0 " Don't wrap my text

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

" show results of substition as they're happening
" but don't open a split
set inccommand=nosplit

" In Virtualblock mode, move free
set virtualedit=block

" "correct" splitting
set splitbelow
set splitright

" make substitution work more sane
set gdefault

source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/ui.vim
source ~/.config/nvim/autocommands.vim

echom 'Done loading. >^.^<'
