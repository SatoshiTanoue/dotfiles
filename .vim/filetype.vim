augroup filetypedetect
    au BufRead,BufNewFile *.c setfiletype c 
    au BufRead,BufNewFile *.rb setfiletype ruby
    au BufRead,BufNewFile *.tex setfiletype tex
    au BufRead,BufNewFile *.html setfiletype html 
augroup END
