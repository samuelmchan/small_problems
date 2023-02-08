def leading_substrings(str)
  str.chars.each_index.map do |index|
    str[0..index]
  end
end

def substrings(str)
  result = []
  alphanumeric = str.delete('^A-z')
  alphanumeric.chars.each_index do |index|
    leading_substrings(alphanumeric[index..-1]).each do |substring| 
      result << substring
    end
  end
  result
end

def palindromic?(str)
  return false unless str.size > 1
  str.downcase == str.downcase.reverse
end

def palindromes(str)
  substrings(str).select do |substring|
    palindromic?(substring)
  end
end


p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
p palindromes('kNiTtInG CaSsEtTeS')