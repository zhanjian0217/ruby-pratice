def say_hello
  yield 99, 88
end

say_hello { |n, m|
  puts n
  puts m
}


5.times do |i|
  puts i 
end


def test_two 
  if yield(3)
    puts "yes, it is 2"
  else
    puts "no, it is not 2" 
  end
end

test_two { |n|
  n == 2
}



def my_select(list)
  result = []
  list.each do |n|
    result << n if yield(n)
  end
  return result
end

p my_select([1, 2, 3, 4, 5,]) { |i| i.odd? }


def my_name
  yield if block_given?
end

my_name
my_name {
  puts "gian"
}