# Given a string of words separated by spaces
# Return the string with the first and last letters of each word swapped
# Split string up into an array of words delimited by spaces
# create helper function to swap first and last letters of a word
# combine array of words to create result string

def swap(string)
  words = string.split
  words.map! { |word| swap_first_last_letters(word)}
  words.join(' ')
end

def swap_first_last_letters(word)
  chars = word.chars
  first = chars.shift
  last = chars.pop
  chars.unshift(last)
  chars << first
  chars.join
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'