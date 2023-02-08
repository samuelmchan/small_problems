def staggered_case(str, startupper=true)
  upcase = !startupper
  str.chars.map do |char|
    upcase = !upcase
    upcase ? char.upcase : char.downcase
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'