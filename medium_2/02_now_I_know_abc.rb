BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(str)
  BLOCKS.none? do |block|
    str.upcase.count(block) >= 2
  end 
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('BATCHB') == false
p block_word?('BUTCHB') == false
p block_word?('BBBBBBBBATCH') == false