def featured(int)
  error = "There is no possible number that fulfills those requirements"
  counter = int + 1
  until counter.odd? && multiple_of_7?(counter) && unique_digits?(counter) 
    return error if counter >= 9876543210
    counter += 1
  end
  counter
end

def multiple_of_7?(int)
  int % 7 == 0
end

def unique_digits?(int)
  int.digits == int.digits.uniq
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements