def swapcase(str)
  str.chars.map do |char|
    case char
    when 'A'..'Z' then char.downcase
    when 'a'..'z' then char.upcase
    else char
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
