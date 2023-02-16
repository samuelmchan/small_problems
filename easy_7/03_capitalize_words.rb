# def word_cap(str)
#   str.split.map do |word|
#     word.capitalize
#   end.join(' ')
# end

def word_cap(str)
  str.split.map do |word|
    word.downcase!
    word[0] = word[0].upcase
    word
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'