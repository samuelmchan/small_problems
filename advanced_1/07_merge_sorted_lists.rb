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

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([2, 2], [1, 1, 3]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

p merge([1, 3, 5], [2, 4, 6])

a = [1, 3, 5]
b = [2, 4, 6]
p merge(a, b)

p a
p b