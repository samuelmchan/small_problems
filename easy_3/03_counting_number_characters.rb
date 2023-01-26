def prompt(str)
  print str
  gets.chomp  
end

response = prompt("Please write word or multiple words: ") 
puts "There are #{response.delete(' ').length} characters in \"#{response}\"." 
