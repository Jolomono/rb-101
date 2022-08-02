# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length,
# you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.

# Given a non empty string
# return either the middle character of that string or the middle two characters
# if the string has an even number of characters
# 'test' should return 'es'
# string length of 4, start at (length / 2) - 1 and get two characters

def center_of(string)
  if string.length.even?
    start = (string.length / 2) - 1
    string.slice(start, 2)
  else
    string[string.length / 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'