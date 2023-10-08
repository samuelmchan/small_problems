def double_num?(int)
  arr = int.digits
  return false if arr.size.odd?
  double_index = arr.size / 2
  arr[0..(double_index - 1)] == arr[double_index..-1]
end

def twice(int)
  return int if double_num?(int)
  int * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
