# A collection of spelling blocks has two letters per block, as shown in this
# list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used
# once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

def block_word?(word)
  blocks = {
    'B'=>'O', 'X'=>'K', 'D'=>'Q', 'C'=>'P', 'N'=>'A', 'G'=>'T', 'R'=>'E',
    'F'=>'S', 'J'=>'W', 'H'=>'U', 'V'=>'I', 'L'=>'Y', 'Z'=>'M'
  }
  test_word = word.upcase
  can_spell = true
  blocks.each do |key, value|
    if test_word.count(key) > 1 || test_word.count(value) > 1
      can_spell = false
    elsif test_word.include?(key) && test_word.include?(value)
      can_spell = false
    end
  end
  can_spell
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true