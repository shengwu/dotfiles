set shiftwidth=4 softtabstop=4 tabstop=4
set expandtab
syntax on
filetype indent plugin on
set number
set ruler
set wrap
set linebreak
set background=dark

" unix line endings for a Windows environment
set ffs=unix,dos

" allow . to operate on each line of a visual block
vnoremap . :normal .<CR>

" Press space to clear search highlighting and any message already displayed
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" line numbering options
highlight LineNr ctermfg=DarkGrey

""" Leader key commands
" Markdown headers
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-
" Top + bottom CSS comment wrapping
nnoremap <leader>3 YPVr*0r/$r/Yjp
" Shorten a sentence from the beginning by a word
nnoremap <leader>0 dw~b
