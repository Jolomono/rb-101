# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

# Create a boolean that swaps each character to cap/uncap each
# Iterate over the string character by character
# First char is capitalized, every other is cap lower cap lower
# Ignore non alpha characters but still swap cap lower even though they aren't
# changed
# Map each to the array, then join the array and return the result

def staggered_case(string)
  capitalize = true
  characters = string.chars.map do |char|
    if capitalize
      capitalize = false
      char =~ /[a-zA-Z]/ ? char.upcase : char
    else
      capitalize = true
      char =~ /[a-zA-Z]/ ? char.downcase : char
    end
  end
  characters.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

