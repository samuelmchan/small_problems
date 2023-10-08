def century(year)
  suffixes = ['th', 'st', 'nd', 'rd']
  n = (year.abs + 99).to_s[0..-3]
  result = case
    when n.end_with?('1', '2', '3') && !n.end_with?('11', '12', '13')
    then n + suffixes[n[-1].to_i]
    else n + suffixes[0]
  end
  result << " BC" if year.negative?
  result
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
p century(-11201) == '113th BC'
p century(-12) == '1st BC'
p century(-256) == '3rd BC'
p century(-4) == '1st BC'
p century(-1) == '1st BC'
