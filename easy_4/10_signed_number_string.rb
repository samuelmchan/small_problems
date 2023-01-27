def integer_to_string(int)
  int.digits.reverse.join
end

def signed_integer_to_string(num)
  string = integer_to_string(num.abs)
  return string unless num.nonzero?
  num.positive? ? string.prepend('+') : string.prepend('-')
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'