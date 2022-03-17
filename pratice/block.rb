def say_hello 
  puts "hi, how are you!"
  yield
  puts "hi, 大家好"
end

say_hello {
  puts "here!"
}
puts "there!"