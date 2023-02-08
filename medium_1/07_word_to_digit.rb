def word_to_digit(str)
  arr = %w(zero one two three four five six seven eight nine)
  arr.each_with_index do |word, index|
    str.gsub!(/\b#{word}\b/, index.to_s)
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')