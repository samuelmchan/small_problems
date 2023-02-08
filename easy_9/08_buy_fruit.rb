def buy_fruit(arr)
  arr.to_h.each_with_object([]) do |(key, value), obj|
    value.times { |_| obj << key }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
