class Cat
  def say_hello  #public
    gossip   #沒有接收者receiver
    self.lol
  end
 

  private      #不能有明確的訊息接收者 不會有小數點
  def gossip
  end      

  protected
  def lol
  end
end


kitty = Cat.new
kitty.say_hello



#puts 是 (private method) 前面沒有 receiver
puts "hello, world"





class Dog
  private
  def secret
    puts "I have a secret, u can't talk anyone"
  end
end

black = Dog.new
black.send(:secret)