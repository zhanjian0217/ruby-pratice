list = [1,2,3,4,5,"aa"]

p list


hero = ["qwe", "kqwoek", "jaifa", "qwoiek", "qkwjeio"]

puts hero.length

hero << "ajifo"

puts hero.length

hero.push("asjfioajsfasjfiaf")   # 加上
puts hero.length




#        map = collect


list2 = [1, 2, 3, 4, 5]
p list2
p list2.map! { |x| x * 2 }
p list2.collect { |x| x**2 }
p list2
# [1, 2, 3, 4, 5]
# [2, 4, 6, 8, 10]
# [4, 16, 36, 64, 100]
# [2, 4, 6, 8, 10]



p (1..10).select {  |x| x > 5 }

# [6, 7, 8, 9, 10]


p (1..100).reduce { |sum, x| sum + x }

# 5050


aaa = [1, 2, 3, 4, 5]
p aaa.map { |x| x * 2 -1 }

# [1, 3, 5, 7, 9]



list = [1, 3, 4, 1, 7, nil, 7]

p list.compact.sort.uniq
# .compact　清除 nil
# .sort   升冪排列
# .uniq   整理重複元素
# [1, 3, 4, 7]



# 範圍
p (1..10).to_a   #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# p (1...10).to_a  #[1, 2, 3, 4, 5, 6, 7, 8, 9,]




x = ("a".."z").to_a 
y = (1..26).to_a

x , y =y , x 

p x   #把 A to Z 轉換成數字


for i in 1..10
  p i
end
# 印出 1 到 10


age = 10

case age
when 0..3 #(Range 範圍)
  puts "baby"
when 4..10
  puts "kid"
when 11..17
  puts "teenager"
else
  puts "adult"
end



p (1..100).select { |x| x.odd? }
# 從 (1..100)的範圍去挑選 


p (1..100).reduce { |sum, x| sum + x }
p (1..100).sum
# 因為要 做出 總和   所以用reduce 做出單一結果


p (1..100).to_a.shuffle.first(5)
p (1..100).to_a.sample(5)
# 隨機抽出 5 個


