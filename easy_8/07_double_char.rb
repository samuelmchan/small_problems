def double_consonants(str)
  str.chars.map do |char| 
    next char if char.downcase =~ /[aeiou\W\d]/
    char * 2
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""