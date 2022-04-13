def salted_string(str)
  arr = "zabcdefy".chars
  str = str.chars

  result = arr[0..6].zip(str[0..5]).join
  
  result + str[6..].join + arr[7..].join 
end

p salted_string("123456") # z1a2b3c4d5e6fy
p salted_string("12345678") # z1a2b3c4d5e6f78y

"z1a2b3c4d5e6fy"
"z1a2b3c4d5e6f78y"