# 1.upto(9) do |n|
#   if n % 2 == 1
#     m = "*" * n
#   end
# end  

# 4.downto(0) do |x|
#   z = " " * x
# end


# def tree (number)
#   number.times do |n|
#     stars = '*' * (2 * n + 1)
#     spaces = ' ' * (number - n - 1)
#     puts spaces + stars
#   end
# end

# tree(5)

5.times do |n|
  puts "媽的智障 #{n}"
end


def christmas_tree(number)
  number.times do |x|
    stars = '*' * (x * 2 + 1)
    space = ' ' * (number - x + 1)
    puts space + stars
  end
end

christmas_tree(5)
