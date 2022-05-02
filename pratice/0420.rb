class Cat
  # attr_reader :name # getter
  # attr_writer :name # setter
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

kitty = Cat.new("gg")
puts kitty.name

puts kitty.name = "kk"


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