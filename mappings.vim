let mapleader = ','

" Load file
nnoremap <leader>o :e 

" Open empty buffer
nnoremap <silent> <leader>n :enew<cr>

" wipout buffer
nnoremap <silent> <leader>w :setl bufhidden=delete \| bnext<cr>
nnoremap <silent> <leader>w! :bw<cr>

" Save
nnoremap <leader>, :w<cr>

" Reload config
nnoremap <leader>r :so ~/.config/nvim/init.vim<cr>

" Open configs
nnoremap <leader>ev :e! ~/.config/nvim/init.vim<cr>
nnoremap <leader>eg :e! ~/.gitconfig<cr>

" Clear search highlights
noremap <space> :set hlsearch! hlsearch?<cr>

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

nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>

" Toggle Tree view on the left
nnoremap <silent> <leader>t :NERDTreeToggle<cr>


" Source current file
nnoremap <silent> <leader>% :source %<cr>

" Keep me centered
set scrolloff=10
nnoremap N Nzz
nnoremap n nzz
nnoremap } }zz
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz
