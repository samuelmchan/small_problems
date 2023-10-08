def prompt(str)
  puts str
  gets.chomp
end

def response(int, operation, solution)
  puts "The #{operation} of the integers between 1 and #{int} is #{solution}."
end

int = prompt("Please enter an integer greater than 0: ").to_i

x = {
  's' => {operation: 'sum', solution: (1..int).sum},
  'p' => {operation: 'product', solution: (1..int).inject(:*)}
}

key = prompt("Enter 's' to compute the sum, 'p' to compute the product. ")


response(int, x[key][:operation], x[key][:solution])

