def prompt(str)
  print(str)
  gets.chomp
end

name = prompt("What is your name? ")
response = "Hello #{name.delete('!')}."

name.chop! && (response << " why are we screaming?").upcase! if name[-1] == '!'

puts response
