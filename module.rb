module Flyable
  def fly 
    puts "I believe I can fly"
  end
end



class Cat
  include Flyable 
end


kitty = Cat.new
kitty.fly


module Flyable
  def fly 
    puts "飛べ!"
  end
end

class Animal
end


class Bird < Animal
  include Flyable
end

class Duck < Bird
end

green = Bird.new
green.fly

subaru = Duck.new
subaru.fly





module Run
  def fast
    puts "I can running faster"
  end
end


class Dog
  extend Run   # 擴充
end

Dog.fast   # 類別方法 








module A
  class Cat
    def meow
      puts "meow meow meow"
    end
  end
end


module B 
  class Cat
    def jump
      puts  "jump jump jump"
    end
  end
end



gian = A::Cat.new
gian.meow


jenny = B::Cat.new
jenny.jump


