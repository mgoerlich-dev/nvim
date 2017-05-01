augroup pluginconfig
  au!

  "Emmet
  au FileType html,css,eruby EmmetInstall

  " Vue
  au FileType vue syntax sync minlines=400
  au BufNewFile,BufRead *.vue set ft=vue

  " Neomake
  au BufRead,BufWrite * Neomake
augroup END

augroup formating
  au!

  "Autoindent files on save
  au BufWritePre *.html,*.js,*.vim,*.vue :exe "normal gg=G2\<c-o>zz"

  " Auto-delete eol whitespace
  au FileType javascript,html,css,ruby au BufWritePre <buffer> %s/\s\+$//e

  " For all text files set 'textwidth' to 78 characters.
  au FileType text,markdown setlocal textwidth=78
augroup END

augroup comfort
  "au!

  " Keep my cwd up2date
  "au BufEnter * silent! lcd %:p:h

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  "au BufReadPost *
        \ if line("'\"") >= 1 && line("'\"") <= line("$") |
        \   execute "normal! g`\"" |
        \ endif
augroup END

