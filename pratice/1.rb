# 不計時數，每天 20 元
# 汽車

# 1. 前 2 個小時，每小時 40 元；超過 2 小時之後每小時 30 元。
# 2. 未滿一小時以一小時計費。
# 3. 停車費每天最高上限為 500 元。


# 請完成以下計算公式

def calc_parking_fee(vehicle_type, parking_hour)
  fee = 0
  parking_hour = parking_hour.ceil
  
  case vehicle_type
  
  when :motocycle
    fee =20 
  
  when :car

    if parking_hour <= 2 
      fee = parking_hour* 40 
    else 
      fee = 80 + (parking_hour - 2)* 30 
    end
    
    if fee >= 500
      fee = 500
    end
  
  end


  return fee
end

puts calc_parking_fee(:motocycle, 2)  # 印出 20
puts calc_parking_fee(:motocycle, 8)  # 印出 20

puts calc_parking_fee(:car, 1.5)      # 印出 80
puts calc_parking_fee(:car, 4)        # 印出 140
puts calc_parking_fee(:car, 5.5)      # 印出 200
puts calc_parking_fee(:car, 18)       # 印出 500


# 2. 完成以下實作內容

class ATM
  attr_reader :balance

  def initialize(amount)
    @balance = amount
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def deposit(amount)
    @balance = @balance + amount
  end

end
atm = ATM.new(10)

atm.withdraw(5)
puts atm.balance  # 印出 5

atm.deposit(10)
puts atm.balance  # 印出 15





# 1. 從輸出結果，推敲實作內容：

def generate_odd_numbers(n)
  (1..n).select { |x| x.odd? }
end

p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(6)  # 印出 [1, 3, 5]
p generate_odd_numbers(3)  # 印出 [1, 3]




def calc_area(radius)
  if radius > 0
    ((radius ** 2) * Math::PI).round(2)
  else
    "Radius must greater than zero!"
  end
end

puts calc_area(8)   # 印出 201.06
puts calc_area(10)  # 印出 314.16
puts calc_area(15)  # 印出 706.86
puts calc_area(-1)  # 印出 Radius must greater than zero!



def generate_order_code(str)
  
  serial = ("%07d" % str)
  "TN-#{ serial }" 

end

puts generate_order_code(29)    # 印出 TN-0000029
puts generate_order_code(328)   # 印出 TN-0000328
puts generate_order_code(1224)  # 印出 TN-0001224




File.readlines("score.csv").each do |line|
  data = line.split(",")
  name = data[0].capitalize
  avg = ( data[1..5].map { |point| point.to_i }.sum ).to_f / 5

  puts "#{name}: #{avg}"
end

