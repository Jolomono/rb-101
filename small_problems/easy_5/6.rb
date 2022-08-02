# Given a string with one or more space separated words
# return a hash that shows the number of words of different sizes
# separate words into an array of words
# iterate over that array counting the size of each word
# increment a counter at each hash of that size to count the words of that size

def word_sizes(string)
  result_hash = {}
  words = string.split
  words.each do |word|
    size = word.size
    if result_hash[size]
      result_hash[size] += 1
    else
      result_hash[size] = 1
    end
  end
  result_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}