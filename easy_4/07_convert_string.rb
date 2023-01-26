def string_to_integer(str)
  str.bytes.reverse.each_with_index.map do |byte, index|
    (byte - 48) * 10**(index)
  end.sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570