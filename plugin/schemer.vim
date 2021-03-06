function! schemer#eval() abort
  call searchpair('(', '', ')', 'bcW')
  normal! "sy%
  let form = shellescape(@s)
  let rhs = shellescape("(write ")
  let lhs = shellescape(") ")
  return system("echo " .  rhs . form . lhs . " | scheme --band runtime.com --quiet --eval --load " . @% )
endfunction

" Show lambdas as  λ
if has('conceal')
  au BufRead *.scm syntax keyword Statement lambda conceal cchar=λ
  au BufRead *.scm hi! link Conceal Statement
  au BufRead *.scm set conceallevel=2
  au BufRead *.scm set concealcursor=nc
endif
