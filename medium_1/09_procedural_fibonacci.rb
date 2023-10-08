# def fibonacci(n)
#   return 1 unless n > 2
#   num1 = 1
#   num2 = 1
#   (nth - 2).times do |time|
#     fnum = num1 + num2
#     num1 = num2
#     num2 = fnum
#   end
#   num2
# end

def fibonacci(nth)
  first, last = [1, 1]
  (nth - 2).times do
    first, last = [last, first + last]
  end

  last
end



p fibonacci(20)
p fibonacci(100)
# fibonacci(100_001) # => 4202692702.....82859796697075375014