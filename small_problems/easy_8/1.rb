# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the Array
# always contains at least one number.

# Given an array of numbers
# Return sum of sums of every subsequence for that array
# (3, 5, 2) == (3) + (3 +  5) + (3 + 5+ 2) = 21
#

def sum_of_sums(array)
  take_numbers = 1
  result = 0
  while take_numbers <= array.size do
    result += array.take(take_numbers).sum
    take_numbers += 1
  end
  result
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35