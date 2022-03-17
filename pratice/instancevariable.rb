# 1.實體變數 : instance variable

# 2.類別變數 : class variable


class Cat
  #attr_reader :name   #生成回傳值的 getter
  #attr_writer :name   #生成設定值的 setter
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
  
  def say_my_name
    return  @name
  end 

  # def name    # getter
  #   return @name
  # end

  # def name=(new_name)   # setter
  #   @name = new_name
  # end
end

kitty = Cat.new('kitty kk')
puts kitty.name
kitty.name = "nancy"
# kitty.name="nancy"
# kitty.name=("nancy")







puts 1 + 2

puts 1.+(2)
# 1 這個物件呼叫 "+"方法 且 2是他的參數 



puts !!true 
puts true.!.!
# 呼叫 "!" 方法





class Dog
  @@counter = 0

  def initialize
    @@counter += 1 
  end

  def self.counter
    return @@counter
  end
end

5.times { Dog.new }


p Dog.counter










