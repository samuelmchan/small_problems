def uppercase?(str)
  str.delete('^a-zA-z').chars.all? do |char|
    char.match?(/[A-Z]/)
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true