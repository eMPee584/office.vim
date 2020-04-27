"Making and Modifying Documents

    "Just download python xls.
    "Use pip or easy_install to fetch the xlsx2csv script:
    "       https://github.com/dilshod/xlsx2csv .

if executable('xls2csv.py')
    autocmd BufReadPre *.xls let g:csv_delimiter = ";"
    autocmd BufReadPre *.xls set ro | setf csv
    autocmd BufReadPre *.xls set hlsearch!
    " This prevents the hit-enter prompt and allows me to operate
    " without xls being in the system path
    exec 'autocmd BufReadPost *.xls :silent! %! python xls2csv.py -i "%" -o - -d'
    autocmd BufReadPost *.xls redraw
endif
