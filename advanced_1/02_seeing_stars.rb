def star(int)
  arr = ['*' * int]
  (int  / 2).times do |spaces|
    str = '***'.chars.join(' ' * spaces).center(int)
    arr.append(str)
    arr.prepend(str)
  end
    puts arr 
end

star(7)
star(9)
star(11)
star(13)
star(15)
star(17)