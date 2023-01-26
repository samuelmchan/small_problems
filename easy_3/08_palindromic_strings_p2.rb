def palindrome?(str)
  str.reverse == str
end

def real_palindrome?(str)
  ascii_encoding = [(48..59), (97...122)].flat_map { |range| range.to_a }
  realstr = str.downcase
  realstr.each_char do |char|
    realstr.delete!(char) unless ascii_encoding.include?(char.ord)
  end
  palindrome?(realstr)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false