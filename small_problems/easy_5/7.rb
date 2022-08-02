# Modify word_sizes from previous problem to not include non-letters in word size
# it's has a length of 3, not 4

ALPHABET = ('a'..'z').to_a

def word_sizes(string)
  result_hash = Hash.new(0)
  words = string.split
  words.each do |word|
    size = get_word_size(word)
    result_hash[size] += 1
  end
  result_hash
end

def get_word_size(word)
  size = 0
  word.downcase.chars { |char| size += 1 if ALPHABET.include?(char) }
  size
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}