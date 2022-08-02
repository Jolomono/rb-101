# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# Given array of strings
# Output: An array of those strings with the vowels removed
# Create empty result array
# Iterate over array of strings looking at each string
# Remove vowels from each string and add string minus vowels to array
# return result array

def remove_vowels(string_array)
  string_array.map do |string|
    remove_vowels_from_string(string)
  end
end

def remove_vowels_from_string(string)
  result = string.chars.reject {|char| "aeiouAEIOU".include? char }
  result.join
end

# test1 = %w(abcdefghijklmnopqrstuvwxyz)
# test2 = %w(green YELLOW black white)
# test3 = %w(ABC AEIOU XYZ)
# p remove_vowels(test1)
# p remove_vowels(test2)
# p remove_vowels(test3)

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']