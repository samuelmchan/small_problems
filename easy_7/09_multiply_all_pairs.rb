def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |multiplier|
    arr2.each do |multiplicand|
      products << multiplier * multiplicand
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]