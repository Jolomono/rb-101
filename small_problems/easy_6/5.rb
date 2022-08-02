# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# Given an array
# Return a new array with the original arrays elements reversed
# Create a new empty array to add elements to
# Iterate over the array putting each new element at the front of the new array
# Return the new array

def reverse(arr)
  result = []
  arr.each {|element| result.unshift(element) }

  result
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
