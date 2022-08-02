# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in
# order from shortest to longest substring.

def leading_substrings(string)
  length_of_substr = 1
  result = []
  while length_of_substr <= string.length
    result << string.slice(0,length_of_substr)
    length_of_substr += 1
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']