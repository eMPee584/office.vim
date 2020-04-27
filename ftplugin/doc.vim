" autocmd BufReadPre *.doc set ro
augroup ft_antiword
    au!
    autocmd BufReadPre *.doc set hlsearch!
    " exec 'autocmd BufReadPost *.doc %!'.expand($ANTIWORDHOME).'/antiword -i 1 -s -f "%"'
    autocmd BufReadCmd *.doc if executable('antiword') | call WordFilter() | endif
    " exec 'autocmd BufReadPost *.doc %!'.expand($ANTIWORDHOME).'/antiword -f "%"'
augroup END

function! WordFilter()
    setlocal noreadonly modifiable
    exec ":silent! %! antiword -i 1 -s -f %:p"
    " silent %s/^\s\+\.\s\+/ â¢ /
    setlocal nolist wrap
    setlocal readonly nomodifiable
endfunction
