class Cat
  def say_hello
    puts "你好"
  end
end


kitty = Cat.new
kitty.say_hello    #作用在實體(kitty)上的方法 : 實體方法


class Dog
  def self.all     #作用在類別(class Dog)上的方法加上 "self"
    puts "all of the dogs !"
  end
end

Dog.all