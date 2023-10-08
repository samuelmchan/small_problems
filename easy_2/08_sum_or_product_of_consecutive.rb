def prompt(str)
  puts str
  gets.chomp
end

def response(int, operation, solution)
  puts "The #{operation} of the integers between 1 and #{int} is #{solution}."
end

int = prompt("Please enter an integer greater than 0: ").to_i

case prompt("Enter 's' to compute the sum, 'p' to compute the product. ")
  when 's' then (operation = 'sum') && solution = (1..int).sum
  when 'p' then (operation = 'product') && solution = (1..int).inject(:*)
end

response(int, operation, solution)










