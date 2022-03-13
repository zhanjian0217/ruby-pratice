# 1.完成以下實作

def count_by(x, n)
  (x..x*n).select { |num| num % x == 0 }   
  # (1..n).map { |number| number * x } 
end

p count_by(1, 5)    # [1, 2, 3, 4, 5]
p count_by(2, 5)    # [2, 4, 6, 8, 10]
p count_by(3, 5)    # [3, 6, 9, 12, 15]
p count_by(50, 5)   # [50, 100, 150, 200, 250]
p count_by(100, 5)  # [100, 200, 300, 400, 500]
# Codewar Level 8 part 1



# 2.把 "a" 字串換成 1，"b" 字串換成 2，不是英文字母的話就無視它，依此類推。請完成以下實作內容：

def alphabet_position(text) #ASCII
  text.gsub(/\W/, "").downcase.bytes.map { |x| x - 96 }.join(" ")
end

p alphabet_position("The sunset sets at twelve o' clock.")
# 印出 "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" 字串

p alphabet_position("-.-'")
# 印出 "" 空字串


# 3.想辦法讓以下程式順利執行

class String
  def is_uppercase?
    self == upcase
  end
end

puts "c".is_uppercase?                       # false
puts "C".is_uppercase?                       # true
puts "hello I AM DONALD".is_uppercase?       # false
puts "HELLO I AM DONALD".is_uppercase?       # true
puts "ACSKLDFJSgSKLDFJSKLDFJ".is_uppercase?  # false
puts "ACSKLDFJSGSKLDFJSKLDFJ".is_uppercase?  # true





# 4.完成以下實作內容

def opposite(n)
  return -n
end

puts opposite(1)   # -1
puts opposite(14)  # -14
puts opposite(-34) # 34






# 5.完成以下實作內容

def repeat_str(n, s)
  puts s * n
end

repeat_str(6, "I")     # 印出 IIIIII
repeat_str(5, "Hello") # 印出 HelloHelloHelloHelloHello



# 6.完成以下實作內容

# 找出離某個數字最近的平方數
def nearest_sq(n)
#  x = n ** 0.5
#  (x.round) ** 2
  Math.sqrt(n).round ** 2
end

puts nearest_sq(1)    # 1
puts nearest_sq(2)    # 1
puts nearest_sq(10)   # 9
puts nearest_sq(111)  # 121
puts nearest_sq(9999) # 10000






# 7.完成以下實作

def monkey_count(n)
  # (1..n).to_a
  [*1..n]
end

p monkey_count(5)  # 印出 [1, 2, 3, 4, 5]
p monkey_count(3)  # 印出 [1, 2, 3]
p monkey_count(9)  # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9]
p monkey_count(10) # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p monkey_count(20) # 印出 [1, 2, 3, 4, 5, 6,..略..18, 19, 20]






# 8.完成以下實作

def count_sheep(num)
  (1..num).to_a.map { |x| "#{x} sheep..." }.join
end

puts count_sheep(1)  # 印出 1 sheep...
puts count_sheep(2)  # 印出 1 sheep...2 sheep...
puts count_sheep(3)  # 印出 1 sheep...2 sheep...3 sheep...





# 9.完成以下實作

def century(year)
  number = ( year / 100.0 ).ceil 
  "#{number} 世紀"
end

puts century(1705)  # 18 世紀
puts century(1900)  # 19 世紀
puts century(1601)  # 17 世紀
puts century(2000)  # 20 世紀





# 10.完成以下實作

def solution(sentence)
  sentence.split.reverse.join(" ")
end

puts solution("The greatest victory is that which requires no battle") 
# 印出 battle no requires which that is victory greatest The






# 11.計算傳入參數之平方和

def squareSum(numbers)
  Array(numbers).map { |x| x ** 2}.sum
end

puts squareSum(2)          # 印出 4
puts squareSum([1, 2, 2])  # 印出 9






# 12.移除頭尾的字元

def remove_char(s)
  s[1..-2]
end

p remove_char('eloquent')  # "loquen"
p remove_char('country')   # "ountr"
p remove_char('person')    # "erso"
p remove_char('place')     # "lac"
p remove_char('ok')        # ""







# 13.計算所有的正整數的和

def positive_sum(arr)
# arr.select { |x| x > 0 }.sum
# arr.select { |x| x.positive? }.sum
  arr.select(&:positive?).sum
end

puts positive_sum([1,2,3,4,5])   # 15
puts positive_sum([1,-2,3,4,5])  # 13
puts positive_sum([-1,2,3,4,-5]) # 9







# 14.打字員在打字的時候，因為看不清楚原稿件，把 S 打成 5、把 I 打成 1、把 O 打成 0，請寫一段程式可以校正原來打錯的字：

def correct(string)    #.tr = transfor
  # string.gsub(/[015]/, "0" => "O" , "1" => "I" , "5" => "S")
  string.tr("510", "SIO")
end

puts correct("L0ND0N")     # LONDON
puts correct("DUBL1N")     # DUBLIN
puts correct("51NGAP0RE")  # SINGAPORE
puts correct("BUDAPE5T")   # BUDAPEST
puts correct("PAR15")      # PARIS