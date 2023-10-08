def print_anagrams(arr)
  anagrams = arr.group_by do |word|
    word.chars.sort
  end

  anagrams.each_value do |array|
    p array if array.size > 1
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

print_anagrams(words)
