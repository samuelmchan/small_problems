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

def max_rotation(int)
  digit_count = int.digits.size
  digit_count.times do |time|
    int = rotate_rightmost_digits(int, (digit_count - time))
  end
  int
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
