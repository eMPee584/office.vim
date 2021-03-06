"Making and Modifying Documents

    "Just download python docx.
    "Use pip or easy_install to fetch the lxml and PIL modules.

if executable('docx-extract.py')
    autocmd BufReadPre *.docx set ro
    autocmd BufReadPre *.docx set hlsearch!
    autocmd BufReadPre *.docx set wrap
    " This prevents the hit-enter prompt and allows me to operate
    " without anitword being in the system path
    exec 'autocmd BufReadPost *.docx :silent! %! python docx-extract.py ' .escape(expand('%'),' ')
    exec 'autocmd BufReadPost *.docx :set nolist'
endif
