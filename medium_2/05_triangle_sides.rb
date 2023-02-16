def triangle(*sides)
  return :invalid unless triangle?(*sides)
  case sides.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else :scalene
  end
end

def triangle?(*sides)
  return false unless sides.size == 3 && sides.none?(0)
  sides.min(2).sum > sides.max
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)