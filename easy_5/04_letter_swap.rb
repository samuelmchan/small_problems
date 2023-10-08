def swap(str)
  words = str.split
  words.map do |word|
    swapped = word.clone
    swapped[0] = word[-1]
    swapped[-1] = word[0]
    swapped
  end.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'