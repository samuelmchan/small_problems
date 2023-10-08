def triangle?(*angles)
  return false unless angles.size == 3 && angles.sum == 180 
  angles.all? { |angle| angle > 0}
end

def triangle(*angles)
  return :invalid unless triangle?(*angles)
  return :right if angles.one?(90)
  return :obtuse if angles.any? { |angle| angle > 90 }
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
