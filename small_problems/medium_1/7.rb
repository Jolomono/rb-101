# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

def word_to_digit(string)
  new_string = string
  numbers = %w[zero one two three four five six seven eight nine]
  numbers.each_with_index do |number, index|
    new_string.gsub!(/\b#{number}\b/, index.to_s)
  end
  new_string
end

test_string = "Please call me at five five five one two three four. Thanks."
p test_string
p word_to_digit(test_string)
p test_string


