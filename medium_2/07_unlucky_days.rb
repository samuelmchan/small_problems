require 'date'

def friday_13th(year)
  date = Date.new(year)
  counter = 0
  while date.year == year
    counter += 1 if date.friday? && date.day == 13
    date = date.next
  end
  counter
end

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2