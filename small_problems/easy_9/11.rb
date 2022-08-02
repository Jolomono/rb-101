# Write a program that prints out groups of words that are anagrams. Anagrams
# are words that have the same exact letters in them but in a different order.
# Your output should look something like this:
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# result =>
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

# create a Hash to hold the results
# For each word in the array
# create an array of that word's characters
# Sort that array alphabetically
# ** Create a helper method to do this **
# using the letter array of the curren word as a key, add the current word


def get_sorted_letters(string)
  string.chars.sort
end

def create_anagram_hash(array)
  result = {}
  array.each do |word|
    letters = get_sorted_letters(word)
    if result[letters]
      result[letters] << word
    else
      result[letters] = [word]
    end
  end
  result
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams_hash = create_anagram_hash(words)

anagrams_hash.each_value {|words| p words}

