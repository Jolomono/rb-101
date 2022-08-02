# Alphabetical Numbers
# Given an array of integers 0-19
# return an array of those integers sorted based on the english words
# for each number.
# Take the array of numbers, convert them to their text word form
# Sort this array alphabetically
# Convert this array back to numbers
# Return the result array

WORD_NUMBERS = %w(zero one two three four five six seven eight nine ten eleven
                  twelve thirteen fourteen fifteen sixteen seventeen eighteen
                  nineteen)

def alphabetic_number_sort(number_array)
  word_array = number_array.collect {|num| get_word_of_number(num) }
  word_array.sort!
  word_array.collect {|word| get_number_of_word(word)}
end

def get_word_of_number(number)
  WORD_NUMBERS[number]
end

def get_number_of_word(word)
  WORD_NUMBERS.index(word)
end

p alphabetic_number_sort([1, 3, 17, 5])
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]