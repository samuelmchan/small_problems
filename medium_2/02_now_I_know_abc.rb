BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(str)
  BLOCKS.none? do |block|
    str.upcase.count(block) >= 2
  end 
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')
p block_word?('BATCHB')
p block_word?('BUTCHB')
p block_word?('BBBBBBBBATCH')