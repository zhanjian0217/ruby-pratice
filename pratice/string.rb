name = "kk"
age = 18

puts "hi, I am #{name}, and I am #{age} years old"


puts 'hi, I am #{name}, and I am #{age} years old'



puts 'i\'m 18years old'

puts  %q(i'm 18years old)
puts  %Q(i'm 18years old)

# %Q()  效果等同於 雙引號
# %q()  效果等同於 單引號

# 常用於套件上



puts 3.14.round #轉成整數，四捨五入

puts 5.88.floor #轉成整數，無條件捨去
puts 7.68.to_i  ##轉成整數，無條件捨去

puts 4.69.ceil  #轉成整數，無條件進位




puts 10/3  #整數除以整數會得到 "整數"

puts 10.0/3     #3.33333333
puts 10/3.0     #3.33333333
puts 10.0/3.0   #3.33333333




