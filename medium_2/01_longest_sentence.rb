text = IO.read('frankenstein.txt')

def longest_sentence(str)
  sentences = str.split(/[.?!]/)
  largest = sentences.max_by do |sentence|
    sentence.split.count
  end
  puts largest
  puts "Contains #{largest.split.count} words(s)"
end


longest_sentence(text)

# def longest_sentence(str)
#   sentences

#   str.split(/[.?!]/) do |sentence|
#     sentence
#   end




#   largest = sentences.max_by do |sentence|
#     sentence.split.count
#   end
#   puts "#{largest}#{punctuation}"
#   puts "Contains #{largest.split.count} words(s)"
# end

