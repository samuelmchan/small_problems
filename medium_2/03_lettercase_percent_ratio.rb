# def letter_percentages(str)
#   hash = {}
#   lowercase_count = 0.0
#   uppercase_count = 0.0
#   neither_count = 0.0
#     str.chars.each do |char|
#       case char
#       when 'A'..'Z' then uppercase_count += 1
#       when 'a'..'z' then lowercase_count += 1
#       else neither_count += 1
#       end
#     end
#   hash.store(:lowercase, (100 * lowercase_count / str.size))
#   hash.store(:uppercase, (100 * uppercase_count / str.size))
#   hash.store(:neither, (100 * neither_count / str.size))
#   hash
# end

# def letter_percentages(str)
#   hash = {uppercase: 0.0, lowercase: 0.0, neither: 0.0}
#   str.chars.each do |char|
#     case char
#     when 'A'..'Z' then hash[:uppercase] += 1
#     when 'a'..'z' then hash[:lowercase] += 1
#     else hash[:neither] += 1
#     end
#   end

#   hash.each do |key, value|
#     hash[key] = value / str.size * 100
#   end
# end

# def letter_percentages(str)
#   hash = {}
#   multiplier = 100 / str.size.to_f
#   hash[:lowercase] = str.count('a-z') * multiplier 
#   hash[:uppercase] = str.count('A-Z') * multiplier
#   hash[:neither] = str.count('^A-z') * multiplier
#   hash
# end


def letter_percentages(str)
  hash = {
    lowercase: str.count('a-z'), 
    uppercase: str.count('A-Z'), 
    neither: str.count('^A-z')
  }
  multiplier = 100.0 / str.size
  hash.each do |key, value| 
    hash[key] = multiplier * value
  end  
end


p letter_percentages('abCdef 123')  == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
