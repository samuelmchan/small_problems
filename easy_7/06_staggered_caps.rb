def staggered_case(str, startupper=true)
  caps = !startupper
  str.chars.map do |char|
    next char unless char =~ /[A-z]/
    caps = !caps
    caps ? char.upcase : char.downcase
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
