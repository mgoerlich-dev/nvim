" Lint-as-you-type and autosave
autocmd! InsertLeave,TextChanged * if @% != '' | Neomake | endif

" Keep my cwd up2date
autocmd BufEnter * silent! lcd %:p:h

" Auto-delete eol whitespace
autocmd FileType javascript,html,css,ruby autocmd BufWritePre <buffer> %s/\s\+$//e

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif
augroup END
