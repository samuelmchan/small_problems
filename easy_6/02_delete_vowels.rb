VOWELS = 'aeiou'

def remove_vowels(arr)
  newarr = arr.clone
  newarr.each do |word| 
    word.delete!(VOWELS + VOWELS.upcase)
  end
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']