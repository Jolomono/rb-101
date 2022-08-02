# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.

# Given two arrays
# Return an array that contains all of the values from the original two arrays
# but with no duplicates.

# arr1 | arr2 does this in one step "Set Union"

def merge(arr1, arr2)
  result = arr1 + arr2
  result.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
