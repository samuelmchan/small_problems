require 'date'

def prompt(str)
  print str
  gets.chomp.to_i
end

current_age = prompt("What is your age? ")
retire_age = prompt("At what are would you like to retire? ")
years_left = retire_age = current_age
retire_year = Date.today.year + years_left


puts(
  [
    "It's #{Date.today.year}. You will retire in #{retire_year}.",
    "You only have #{years_left} of work to go!"
  ]  
)