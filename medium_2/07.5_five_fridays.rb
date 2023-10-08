require 'date'

def five_fridays(year)
  fridays = Hash.new(0)
  date = Date.new(year, 1, 1)
  while date.year == year
    fridays[date.month] += 1 if date.friday?
    date = date.next   
  end
  fridays.values.count(5)
end

p five_fridays(2000)
p five_fridays(2001)
p five_fridays(2002)
p five_fridays(2003)
p five_fridays(2004)
p five_fridays(2005)
p five_fridays(2006)
p five_fridays(2007)
p five_fridays(2008)
p five_fridays(2009)
p five_fridays(2010)