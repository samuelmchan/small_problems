def average(arr)
  arr.inject(:+) / arr.size
end

# def average(arr)
#   sum = 0
#   arr.each do |num|
#     sum += num
#   end
#   sum / arr.size
# end


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
