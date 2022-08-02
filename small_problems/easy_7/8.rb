# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# Given two arrays of numbers
# Return an array that contains each number from each array with the same index
# multiplied
# Loop over the first array while using the value and index
# Add the current element multiplied by the second array's element at the
# current index to the result array
# Continue until you have the full result array

def multiply_list(arr1, arr2)
  result = []
  arr1.each_index do |idx|
    result << arr1[idx] * arr2[idx]
  end
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]