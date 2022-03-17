# 1. 從輸出結果，推敲實作內容：

def generate_odd_numbers(n)
  (1..n).select {|x| x.odd?}
end

p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(6)  # 印出 [1, 3, 5]
p generate_odd_numbers(3)  # 印出 [1, 3]



# 2. 完成以下計算圓面積程式的實作內容：

def calc_area(radius)
  if radius > 0
    ( (radius**2) * Math::PI ).round(2)
  else
    return "Radius must greater than zero!"
  end
end

puts calc_area(8)   # 印出 201.06
puts calc_area(10)  # 印出 314.16
puts calc_area(15)  # 印出 706.86
puts calc_area(-1)  # 印出 Radius must greater than zero!









# 3. 完成以下產生訂單編號程式之實作內容：

def generate_order_code(str)
  # "TN-" + ("%07d" % str)
  serial = "%07d" % str
  # "TN-#{ ("%07d" % str) }"
end

puts generate_order_code(29)      # 印出 TN-0000029
puts generate_order_code(328)     # 印出 TN-0000328
puts generate_order_code(1224)    # 印出 TN-0001224





# # 4. 本期學生的成績如附檔(score.csv)，其中第 1 欄是學生姓名，其它 5 個欄位是學生的 5 次成績。請試著寫一段程式計算每位同學的平均分數，並在畫面上印出以下結果：

File.readlines("score.csv").each do |line|
  data = line.split(",")
  name = data.first.capitalize
  average = data[1..5].map { |x| x.to_i }.sum / 5.0
  
  puts "#{name}: #{average}"
end

# average = data[1..5].map { |x| x.to_i }.sum / ((data.length) - 1).to_f 


# def average(list)
#   point = (list.sum.to_f / list.length).round(1)
#   puts "list : #{point}"
# end


# average(John)
# average(Mary)
# average(Sherly)
# average(Joanne)