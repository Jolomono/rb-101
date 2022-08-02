# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.
# You may assume that words are any sequence of non-blank characters.

# Given a string
# Return a new string where each word in the string has the first letter
# capitalized with the rest of the letters lowercase
# Take the string and split it into an array of individual words
# For each word, capitalize the first letter and make the remainder lowercase
# rejoin the array of modified words into a string with spaces between each

def word_cap(string)
  words = string.split
  words.map! { |word| word.capitalize }
  words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'