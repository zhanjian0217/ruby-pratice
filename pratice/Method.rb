# Method
# 1.可重複使用
# 2.可以容易理解


# def say_hello_to(someone)
#     puts "hi, #{someone}"
# end

# say_hello_to("gian")
# say_hello_to("sdijgi")
# say_hello_to "dsfi"   #可以適當省略小括號





# [冷知識]

# age = 18 

# def age 
#     return 20
# end

# puts age   #18   # 先找變數 再找方法
# puts age() #20















# def say_hello_to(someone)
# end

# def greeting
# end

#   say_hello_to("giabn")
#   greeting "AA"















# def say_hello_to(someone = "魯夫")  # 預設值
#   puts "hi, #{someone}"
# end

# say_hello_to ("孫悟空")
# say_hello_to















def doubleC(num)
  puts 2 * num # 無回傳
end

p doubleC(3)

# return 可適時省略，會自動回傳最後一行的執行結果











def add_three(n)
    n + 3
end


def age 
    20    # return
end

p add_three(2)
p age














# def idle
# end

# def say_hello
#     puts "你好"   # puts 沒有回傳直 nil 
# end

# p idle
# p say_hello
















# def is_adult?(age)
#   if age >= 18 
#     return true
#   else
#     return false
#   end
# end

# p is_adult?(20)
# p is_adult?(15)


# 上方方法可以省略為

def is_adult?(age)
    age >= 18 
end

p is_adult?(20)















# list = [9, 5, 2, 7]

# p list.sort!  # ! 之後會改變原本list
# p list
 