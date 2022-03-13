# name = :hello
# name = 2 


# p name 
# p :hello



# name = "abcdefg"
# name[1] = "x"
# p name


# Symbol 不能變動
# name = :abcdefg
# name[1] = "x"
# p name



# p "hello".object_id
# p "hello".object_id
# p "hello".object_id
# p "hello".object_id
# p "hello".object_id

# p :hello.object_id
# p :hello.object_id
# p :hello.object_id
# p :hello.object_id
# p :hello.object_id

# puts "hello".freeze.object_id
# puts "hello".freeze.object_id
# puts "hello".freeze.object_id
# puts "hello".freeze.object_id
# puts "hello".freeze.object_id





# p 2.object_id  # 2n + 1 
# p 5.object_id
# p 13.object_id
# p 13.object_id
# p 13.object_id





# 字串 轉 符號

p "name".to_sym
p "name".intern



# 符號 轉 字串

p :name.to_s
p :name.id2name







########
#  該使用  字串  還是  符號 ????????????????????????

p "不可變, 選擇符號    或是.freeze 冷凍字串"


p "可變, 選擇字串    需要組合以及變化的話"






