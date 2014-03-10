function! schemer#eval() abort
  call searchpair('(', '', ')', 'bcW')
  normal! "sy%
  let form = shellescape(@s)
  let rhs = shellescape("(write ")
  let lhs = shellescape(") ")
  return system("echo " .  rhs . form . lhs . " | scheme --quiet --eval --load " . @% )
endfunction
