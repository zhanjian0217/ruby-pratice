def random_string(n = 8)
  [*'0'..'z'].sample(n).join
end

p random_string(10)  # 10 碼亂碼(a-z, 0-9)
p random_string(5)   # 5 碼亂碼(a-z, 0-9)
p random_string      # 8 碼亂碼(a-z, 0-9)


