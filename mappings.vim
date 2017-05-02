let g:mapleader = ','

" Open empty buffer
nnoremap <silent> <leader>n :enew<cr>

" wipout buffer
nnoremap <silent> <leader>k :setl bufhidden=delete \| bnext<cr>
nnoremap <silent> <leader>k! :bw<cr>

" Save
nnoremap <leader>w :w<cr>

" Source current file
nnoremap <silent> <leader>sf :so %<cr>
" Reload config
nnoremap <silent> <leader>rv :so ~/.config/nvim/init.vim<cr>
" Reload config, install plugins
nnoremap <silent> <leader>rp :so ~/.config/nvim/init.vim<cr>:PlugInstall<cr>

" Open configs
nnoremap <leader>ev :e! ~/.config/nvim/init.vim<cr>
nnoremap <leader>eg :e! ~/.gitconfig<cr>

" Clear search highlights
noremap <leader><space> :noh<cr>

" spell-checking?
nnoremap ;se :set invspell spelllang=en_EN<cr>
nnoremap ;sd :set invspell spelllang=de_DE<cr>

" markdown to html
nnoremap <leader>md :%!showdown makehtml -m<cr>

" quick switch between current and prev buffer
nnoremap <leader>. <c-^>

" Window navigation
noremap <silent> <C-h> :call functions#WinMove('h')<cr>
noremap <silent> <C-j> :call functions#WinMove('j')<cr>
noremap <silent> <C-k> :call functions#WinMove('k')<cr>
noremap <silent> <C-l> :call functions#WinMove('l')<cr>

" Close window
noremap <silent> <leader>wc :wincmd q<cr>

" Find word at cursor
nnoremap <leader>/ "fyiw /<c-r>f<cr>
nnoremap <leader>h "fyiw :help <c-r>f<cr>
nnoremap <leader>s "fyiw :%s/<c-r>f/

" Switch buffers
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>

" Toggle Tree view
nnoremap <silent> <leader>t :NERDTreeToggle<cr>

" improve regexs
nnoremap / /\v
vnoremap / /\v

" Move between brackets easier
nnoremap <tab> %
vnoremap <tab> %

" remove whitespace
nnoremap <silent> <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" folding
nnoremap <silent> <leader>f za
nnoremap <silent> <leader>F zA

" fuzzy finding
nnoremap <silent> <leader>o :FuzzyOpen<cr>

" Keep me centered
set scrolloff=10
nnoremap N Nzz
nnoremap n nzz
nnoremap } }zz
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz
