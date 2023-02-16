require 'date'

def friday_13th(year)
  date = Date.new(year, 1, 1)
  counter = 0
  while date.year == year
    counter += 1 if date.friday? && date.year == 13
    date = date.next
  end
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2