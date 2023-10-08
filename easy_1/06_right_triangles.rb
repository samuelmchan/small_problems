def triangle(side)
  lines = []
  side.times do |index|
    stars = index + 1
    spaces = side - stars
    lines << (' ' * spaces) + ('*' * stars)
  end
  puts lines
end

triangle(5)
triangle(9)
