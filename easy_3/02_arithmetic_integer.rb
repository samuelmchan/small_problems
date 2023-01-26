def prompt(str)
  puts str
  gets.chomp.to_i
end

operations = [:+, :-, :*, :/, :%, :**]

x = prompt("Enter the first number: ")
y = prompt("Enter the second number: ")

operations.each do |operation|
  puts "#{x} #{operation} #{y} = #{[x, y].inject(operation)}"
end


