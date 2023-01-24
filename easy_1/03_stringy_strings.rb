def is_odd?(integer)
  integer % 2 != 0 
end

def stringy(integer)
  string = ''
  integer.times do |i|
    string << (is_odd?(i) ? '0' : '1')
  end
  string
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'