numbers = %w(1st, 2nd, 3rd, 4th, 5th, last).map do |nth|
  puts "==> Enter the #{nth} number: "
  gets.chomp.to_i
end

last = numbers.pop # mutating

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in the #{numbers}."
end