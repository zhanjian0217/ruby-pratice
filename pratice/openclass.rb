class Cat
  def hello
  end
end


class Cat
  def world
  end
end


# 兩個同名的"""類別(class)"""撞在一起時不會覆蓋會"融合"

kitty = Cat.new
kitty.hello 
kitty.world 




class String
  def say_hello
    "hihihihihi #{self}"
  end

  def length
    100
  end
end


puts "濟安".say_hello
puts "123456".say_hello
puts "1234".length




class Integer
  alias :old_plus :+

  def +(n)
    puts "hihihi!"
    self.old_plus(n)
  end
end



puts 1 + 2
puts 1.+(2)
puts 2 + 3 