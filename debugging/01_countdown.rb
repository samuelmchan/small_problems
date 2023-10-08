# def decrease(counter)
#   counter - 1
# end

# counter = 10

# 10.times do
#   puts counter
#   counter = decrease(counter)
# end

# puts 'LAUNCH!'

10.downto(1) do |counter|
  puts counter
end

puts 'LAUNCH'