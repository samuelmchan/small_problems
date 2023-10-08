def fizz?(int)
  int % 3 == 0
end

def buzz?(int)
  int % 5 == 0
end

def fizzbuzz(int1, int2)
  arr = (int1..int2).map do |num| 
    next num unless fizz?(num) || buzz?(num)
    str = ''
    str << 'Fizz' if fizz?(num)
    str << 'Buzz' if buzz?(num)
    str
  end
  puts arr.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz