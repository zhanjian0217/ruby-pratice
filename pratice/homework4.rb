language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']

# p  language.select {|lang| lang.include?("P")} 

p  language.select {|lang| lang.start_with?("P")} 
# p language.select { |lang| lang[0] == "P"}
p language.select {|lang|lang.first == "P"}



p language.sort_by { |lang| lang.size }[0]
p language.sort_by { |lang| lang.size }.first

p language.min { |a, b| a.length <=> b.length }




# 1. 請寫一段程式，印出 P 開頭的程式語言
# 2. 找出名字最短的程式名語

require 'date'

def calc_age(birthday)
  ( (Date.new(2019,7,31) - Date.  (birthday)).to_i / 365.0 ).ceil
    # Date.today #
end
  
  puts calc_age('1985/1/2')  # 印出 35
  puts calc_age('1997/8/28') # 印出 22






  
  # 判斷結果

  # 第一種: 加總之後的值可以被 10 整除即是正確的統編。
  # 第二種: 或是，如果統編的第 7 碼是 7 的話，再把總值加 1 之後可 10 整除也是正確的統編。



   


def is_valid_company_no?(serial)
  if serial.length != 8
      "格式不符"
  else
      params = [1, 2, 1, 2, 1, 2, 4, 1]

      checksum = 0
      serial.split("").each.with_index do |s , index|
        checksum += (s.to_i * params[index]).divmod(10).sum
        
      end

      return ( checksum % 10 == 0 ) ||  serial[6] == '7' && (checksum + 1 ) % 10 == 0   

      # if checksum % 10 == 0 
      #   return true
      # elsif serial[6] == '7' && (checksum + 1 ) % 10 == 0 
      #   true
      # else
      #   false
      # end
        
      
      # if ( checksum % 10 == 0 ) ||  serial[6] == '7' && (checksum + 1 ) % 10 == 0     
      #   true
      # else
      #   false
      # end
  
    end
end
puts is_valid_company_no?('2453680')  # 印出「格式不符」字樣
puts is_valid_company_no?('24536806') # 印出 true
puts is_valid_company_no?('12222539') # 印出 false
