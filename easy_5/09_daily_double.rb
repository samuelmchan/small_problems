def crunch(str)
  str.chars.each_with_index do |char, index| 
    char.clear if char == str[index + 1]  
  end.join
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
