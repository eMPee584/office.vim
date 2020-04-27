if executable('pdftotext')
    autocmd BufReadPre *.pdf set ro
    autocmd BufReadPre *.pdf set hlsearch!
    autocmd BufReadPre *.pdf set wrap
    exec 'autocmd BufReadPost *.pdf :silent! %! pdftotext -nopgbrk -layout -q -eol unix "%" -'
    exec 'autocmd BufReadPost *.pdf :set nolist'
    exec 'autocmd BufReadPost *.pdf :silent! g/^$/d'
    exec 'autocmd BufReadPost *.pdf :silent! %s/^\s*\d\+$//'
    " exec 'autocmd BufReadPost *.pdf :g/\n^$/normal! vipJ'
endif
