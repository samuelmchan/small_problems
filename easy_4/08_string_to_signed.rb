def string_to_integer(str)
  str.bytes.reverse.each_with_index.map do |byte, index|
    (byte - 48) * 10**(index)
  end.sum
end

def string_to_signed_integer(str)
  value = string_to_integer(str.delete('+-'))
  str.start_with?('-')? -value : value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100