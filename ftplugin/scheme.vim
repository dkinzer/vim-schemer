nmap <silent> <buffer> ;s :echo schemer#eval()<CR>
imap <buffer> ;l lambda 

" Show lambdas as  λ
if has('conceal')
  au VimEnter * syntax keyword Statement lambda conceal cchar=λ
  au VimEnter * hi! link Conceal Statement
  au VimEnter * set conceallevel=2
endif
