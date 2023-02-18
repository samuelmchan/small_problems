def sum_square_difference(int)
 (0..int).to_a.sum ** 2 - (0..int).map {|num| num ** 2 }.sum
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150