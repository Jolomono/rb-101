# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be
# unchanged.
# You may not use String#swapcase; write your own version of this method.

# Iterate over the string character by character
# Create an empty result string
# If the current character is a lowercase letter, add that letter upcased to the
# result string
# If the current character is an uppercase letter, add that letter downcased to
# the result string
# If the character is neither, add it as is to the result string
# return the result string

def swapcase(string)
  result = ''
  string.chars do |char|
    if char =~ /[a-z]/
      result << char.upcase
    elsif char =~ /[A-Z]/
      result << char.downcase
    else
      result << char
    end
  end
  result
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'