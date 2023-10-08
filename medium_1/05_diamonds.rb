def diamond(int)
  grid = ['*' * int]
  (int -1).downto(0) do |stars|
    next if stars.even?
    line = '*' * stars
    grid.push(line)
    grid.prepend(line)
  end
  hollow_diamond = grid.map do |str|
    hollow(str).center(int)  
  end
  puts hollow_diamond  
end

def hollow(str)
  new_str = ' ' * str.size
  new_str[0], new_str[-1] = ['*', '*']
  new_str
end

diamond(9)
