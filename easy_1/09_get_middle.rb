# def center_of(string)
#   length = string.size
#   middle = string.size / 2
#   if length.odd?
#     string[middle]
#   else
#     string[middle-1..middle]
#   end
# end

def center_of(string)
  x = string.size.divmod(2)
  string[(x[0] + x[1] - 1)..x[0]]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

