# class Cat
#   def eat(food)
#     puts "#{food} 好吃!"
#   end
# end


# kitty = Cat.new
# kitty.eat "魚"


class Animal
  def walk
  end
  def eat
  end
end


class Dog < Animal
end

class Cat < Animal
end


gian  = Dog.new
gian.walk
gian.eat

jenny = Cat.new
jenny.walk
jenny.eat

