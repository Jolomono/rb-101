# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays. The
# results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Given two arrays of numbers
# Return an array with the product of every pair of numbers sorted in increasing
#  value.
# Iterate over array1, multiplying the current number with each of array2's
#  numbers
# Add each result to a result array
# Sort the array lowest to highest then return the array

def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |num1|
    arr2.each do |num2|
      result << num1 * num2
    end
  end
  result.sort
end

p multiply_all_pairs([2,4], [4,3,1,2])