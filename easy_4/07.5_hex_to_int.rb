def hexadecimal_to_integer(str)
  arr = []
  str.downcase.each_char do |char|
    case char
    when '0'..'9' then arr << char.ord - 48 
    when 'a'..'f' then arr << char.ord - 87
    end
  end
  arr.reverse.each_with_index.map do |num, index|
    num *= (16 ** index)
  end.sum
end

p hexadecimal_to_integer('4D9f')