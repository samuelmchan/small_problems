def prompt(type)
  puts "Enter a #{type}:"
  gets.chomp
end

puts "Do you #{prompt('verb')} you #{prompt('adjective')} #{prompt('noun')} #{prompt('adverb')}? That's hillarious!"
