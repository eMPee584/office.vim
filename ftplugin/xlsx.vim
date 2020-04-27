"Making and Modifying Documents

    "Just download python xls.
    "Use pip or easy_install to fetch the xlsx2csv script:
    "       https://github.com/dilshod/xlsx2csv .

if executable('xls2csv.py')
    autocmd BufReadPre *.xlsx let g:csv_delimiter = ";"
    autocmd BufReadPre *.xlsx set ro | setf csv
    autocmd BufReadPre *.xlsx set hlsearch!
    " This prevents the hit-enter prompt and allows me to operate
    " without xls being in the system path
    exec 'autocmd BufReadPost *.xlsx :silent! %! python xlsx2csv.py "%"'
    autocmd BufReadPost *.xlsx redraw
endif
