# unoptimized

# def bubble_sort!(arr)
#   complete_swap = false
#   until complete_swap
#     swap = 0
#     (arr.size - 1).times do |time|
#       next unless arr[time] > arr[time + 1]
#       arr[time], arr[time + 1] = arr[time + 1], arr[time]
#       swap += 1
#     end
#     complete_swap = true if swap == 0
#   end
# end

# optimized
def bubble_sort!(arr)
  n = 1
  loop do
    swap = false
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
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)