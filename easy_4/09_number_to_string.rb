# def integer_to_string(int)
#   int.digits.reverse.join
# end

# def integer_to_string(int)
#   arr = []
#   value = int
#   digit_count = int.zero? ? 0 : Math.log10(int).to_i
#   loop do
#     digit = value / 10 ** digit_count
#     value -= digit * (10 ** digit_count)
#     arr << digit
#     digit_count -= 1
#     break if digit_count == -1
#   end
#   arr.join
# end

# def integer_to_string(int)
#   result = []
#   base_power = int.zero? ? 0 : Math.log10(int).to_i
#   (base_power + 1).times do |time|
#     digit, int = int.divmod(10 ** (base_power - time))
#     result << digit
#   end
#   result.join
# end

def integer_to_string(int)
  base_power = int.zero? ? 0 : Math.log10(int).to_i
  (base_power + 1).times.map do |time|
    digit, int = int.divmod(10 ** (base_power - time))
    digit
  end.join
end

# def integer_to_string(int)
#   base_power = int.zero? ? 0 : Math.log10(int).to_i
#   (base_power + 1).times.each_with_object([]) do |time, obj|
#     digit, int = int.divmod(10 ** (base_power - time))
#     obj << digit
#   end.join
# end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)
