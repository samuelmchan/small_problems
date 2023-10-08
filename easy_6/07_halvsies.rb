# def halvsies(arr)
#  tail = arr.size / 2
#  head = arr.size - tail
#  [arr.shift(head), arr.pop(tail)]
# end
# mutating version

def halvsies(arr)
  arr.each_with_object([[], []]).with_index do |(element, obj), index|
    index < arr.size / 2.0 ? obj[0] << element : obj[1] << element
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]