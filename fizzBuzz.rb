FIZZ_VAL = 3 
BUZZ_VAL = 5

LOOP_END_VAL = 100

def get_LCM(val1, val2)
  big_val = val1
  small_val = val2
  
  if (big_val < small_val)
    tmp_val = big_val
    big_val = small_val
    small_val = tmp_val
  end
  
  mod_val = big_val % small_val

  while(mod_val != 0)
    big_val = small_val
    small_val = mod_val
    mod_val = big_val % small_val
  end
  
  product_val = val1 * val2

  return product_val / small_val
end

fizz_buzz_val = get_LCM(FIZZ_VAL, BUZZ_VAL)

for loop in 1..LOOP_END_VAL do
  if ((loop % fizz_buzz_val) == 0)
    puts ("FizzBuzz(#{loop})")
  elsif ((loop % FIZZ_VAL) == 0)
    puts ("Fizz(#{loop})")
  elsif((loop % BUZZ_VAL) == 0)
    puts("Buzz(#{loop})")
  else
    puts(loop)
  end
end
