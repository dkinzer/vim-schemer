nmap <buffer> ;s :echo schemer#eval()<CR>

" Show lambdas as  λ
if has('conceal')
  au VimEnter * syntax keyword Statement lambda conceal cchar=λ
  au VimEnter * hi! link Conceal Statement
  au VimEnter * set conceallevel=2
endif
