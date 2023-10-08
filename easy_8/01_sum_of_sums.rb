# def sum_of_sums(arr)
#   counter = 0
#   total = 0
#   until counter == arr.size
#     total += arr[0..counter].sum
#     counter += 1
#   end
#   total
# end

def sum_of_sums(arr)
  total = 0
  arr.each_index do |index|
    total += arr[0..index].sum
  end
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35