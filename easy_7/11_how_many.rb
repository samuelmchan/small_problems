def count_occurrences(arr)
  nocase = arr.map(&:downcase)
  nocase.each_with_object({}) do |element, hash|
    hash[element] = nocase.count(element)
  end.each { |key, value| puts "#{key} => #{value}"}
end



vehicles = [
  'car', 'CAR', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

