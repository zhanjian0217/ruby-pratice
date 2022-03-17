# 迴圈種類

# for 迴圈
names = ["eddie", "joanne", "john", "gian"]

for name in names
  puts name
end





# while 迴圈
x = 0
while x < 10 
  puts x 
  x += 1
end

x = 0
until x >= 10 
  puts x 
  x += 1
end





# loop 迴圈
i = 0
loop do 
  puts i
  i += 1
  break if i > 10
end





# method 式迴圈
5.times do 
  puts "hello, ruby"
end



10.downto(1) do |x|
  puts "hello , ruby #{x}"
end






# 迭代式迴圈
names = ["eddie", "joanne", "john", "gian"]

names .each do |name|
  puts name
end



names = ["eddie", "joanne", "john", "gian"]

names .each.with_index do |name , index|
  puts "#{index} #{name}"
end