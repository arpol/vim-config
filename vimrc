set nocompatible
"filetype plugin on
filetype off "required by vundle

set tabstop=4
set shiftwidth=2
color desert

"from http://wiki.octave.org/Vim :
autocmd FileType matlab setlocal keywordprg=info\ octave\ --vi-keys\ --index-search
runtime macros/matchit.vim

let s:conditionalEnd = '\(([^()]*\)\@!\<end\>\([^()]*)\)\@!'
autocmd FileType octave let b:match_words = '\<if\>\|\<while\>\|\<for\>\|\<switch\>:' .
       \ s:conditionalEnd . ',\<if\>:\<elseif\>:\<else\>:' . s:conditionalEnd

"making matching parenthesis underlining more elegant
"from http://design.liberta.co.za/articles/customizing-disabling-vim-matching-parenthesis-highlighting/
hi MatchParen cterm=underline ctermbg=none ctermfg=none 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on  
