set shiftwidth=4 softtabstop=4 tabstop=4
set expandtab " expand tabs to spaces
syntax on
set number

" dark background for Cygwin
set background=dark

" unix line endings for a Windows environment
set ffs=unix,dos

" allow . to operate on each line of a visual block
vnoremap . :normal .<CR>

" Press space to clear search highlighting and any message already displayed
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" line numbering options
highlight LineNr ctermfg=DarkGrey

" toggle relative/absolute line numbering on Ctrl-n
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" back to absolute line numbers when window deselected
":au FocusLost * :set number
":au FocusGained * :set relativenumber

set ruler
set cindent

" disable cindent for .css files
au BufEnter *.css set nocindent
au BufLeave *.css set cindent

" Wrap text and don't break words
set wrap
set linebreak
"set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85

" tab and eol characters
"set list
"set listchars=tab:?\ ,eol:¬

""" Leader key commands
" Markdown headers
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-
" Top + bottom CSS comment wrapping
nnoremap <leader>3 YPVr*0r/$r/Yjp
" Shorten a sentence from the beginning by a word
nnoremap <leader>0 dw~b
