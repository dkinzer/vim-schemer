function! schemer#eval() abort                                                                                   
  call searchpair('(', '', ')', 'bcW')                                                                        
  normal! "sy%                                                                                                
  return system("echo '(write " . @s .  ")' | scheme --quiet --eval --load " . @% )
endfunction
