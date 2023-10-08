def leading_substrings(str)
  str.chars.each_index.map do |index|
    str[0..index]
  end
end

def substrings(str)
  result = []
  str.chars.each_index do |index|
    leading_substrings(str[index..-1]).each do |substring| 
      result << substring
    end
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]