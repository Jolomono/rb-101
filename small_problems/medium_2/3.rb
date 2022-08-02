# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Given: a string that contains at least one character
# Return: a hash table with the average percent of lowercase, uppercase, and
#   neither characters in the string
# Create counters for lowercase, uppercase, and neither
# Iterate over the string character by character
# For each character, check for uppercase or lowercase and increment counters
#   if neither, increment neither
# Calculate the totals as floats by taking the counts as floats divided by the
#   size of the initial string multiplied by 100
# Create a hash containing the keys and values listed

def letter_percentages(string)
  lower = 0
  upper = 0
  neither = 0
  string.chars do |char|
    if char =~ /[a-z]/
      lower += 1
    elsif char =~ /[A-Z]/
      upper += 1
    else
      neither += 1
    end
  end
  { lowercase: lower.to_f / string.length * 100,
  uppercase: upper.to_f / string.length * 100,
  neither: neither.to_f / string.length * 100
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }