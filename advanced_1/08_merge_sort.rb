def merge(arr1, arr2)
  result = []
  x = arr1.clone
  y = arr2.clone
  until x.empty? || y.empty?
    if x.first >= y.first
      result << y.shift
    else
      result << x.shift
    end
  end
  result + x + y
end

def split_array(array)
  n = array.size
  return array if n == 1
  left_array = array[0..(n/2-1)]
  right_array = array[(n/2)..-1]
  left_array = split_array(left_array)
  right_array = split_array(right_array)
  merge(left_array, right_array)
end

array = [1, 2, 3, 4, 5, 6, 7, 9, 7, 4, 3, 1, 0, 5]
p split_array(array)


# merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# merge_sort([5, 3]) == [3, 5]
# merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
