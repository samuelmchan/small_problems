# def is_odd?(integer)
#   (integer.abs % 2) != 0 
# end

# def is_odd?(integer)
#   integer.divmod(2)[1] != 0
# end

def is_odd?(integer)
  integer % 2 != 0 
end



puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
