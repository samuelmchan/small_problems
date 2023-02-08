def rotate_array(arr)
  arr.map.with_index do |element, index|
    arr[index - (arr.size - 1)]
  end
end

def rotate_rightmost_digits(int, rdigits)
  array = int.digits.reverse
  array[-rdigits..-1] = rotate_array(array[-rdigits..-1])
  array.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
