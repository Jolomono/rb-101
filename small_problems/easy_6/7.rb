# Write a method that takes an Array as an argument, and returns two Arrays (as
# a pair of nested Arrays) that contain the first half and second half of the
# original Array, respectively. If the original array contains an odd number of
# elements, the middle element should be placed in the first half Array.

# Given an array
# Return an array containing two arrays each with half of the elements of the
# original array. Middle element in an odd sized array goes in first half.

def halvsies(arr)
  result = []
  half = (arr.size / 2.0).ceil
  result << arr.take(half)
  result << arr.drop(half)
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]