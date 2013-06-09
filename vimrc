set shiftwidth=4 softtabstop=4 tabstop=4
set expandtab
set number
set ruler
set wrap
set linebreak
set background=dark
set ignorecase
set smartcase
set hlsearch
syntax on
filetype plugin indent on

" dark grey line numbers
highlight LineNr ctermfg=DarkGrey

" 2-space indents for HTML and ruby
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2 tabstop=2

" unix line endings for a Windows environment
set ffs=unix,dos

" allow . to operate on each line of a visual block
vnoremap . :normal .<CR>
vnoremap @q :normal@q<CR>
vnoremap <leader>4 :normal <leader>4<CR>
vnoremap <leader>5 :normal <leader>5<CR>

" Press space to clear search highlighting and any message already displayed
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" allow :W to work like :w
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" for vim-LaTeX
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Jump to the last position whenreopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

""" Leader key commands
" Markdown headers
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-
" Top + bottom CSS comment wrapping
nnoremap <leader>3 YPVr*0r/$r/Yjp
" Wrap/unwrap a C-style comment
nnoremap <leader>4 I/* <Esc> A */<Esc>
nnoremap <leader>5 _3x$xxx
" eRuby block
nnoremap <leader>6 o<% %><Esc>2hi
" Shorten a sentence from the beginning by a word
nnoremap <leader>0 dw~b
nnoremap <leader>j :%!python -m json.tool<CR>
