# Write a method that returns a list of all substrings of a string. The returned
# list should be ordered by where in the string the substring begins. This means
# that all substrings that start at position 0 should come first, then all
# substrings that start at position 1, and so on. Since multiple substrings will
# occur at each position, the substrings at a given position should be returned
# in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the
# previous exercise:

def leading_substrings(string)
  length_of_substr = 1
  result = []
  while length_of_substr <= string.length
    result << string.slice(0,length_of_substr)
    length_of_substr += 1
  end
  result
end

def substrings(string)
  result = []
  while string.length > 0
    result += leading_substrings(string)
    string.slice!(0)
  end
  result
end

p substrings('abcde')