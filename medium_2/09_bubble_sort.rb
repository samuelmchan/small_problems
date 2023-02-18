def bubble_sort!(arr)
  loop do
    swap = false
    n = 1
    (arr.size - n).times do |time|
      next unless arr[time] > arr[time + 1]
      arr[time], arr[time + 1] = arr[time + 1], arr[time]
      swap = true
    end
    n += 1
    break unless swap
  end
end


array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)