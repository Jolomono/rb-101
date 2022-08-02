# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# Given an array
# Return that same array with the elements order reversed
# Only swap first half of array, if odd number of elements half rounded down
# while index <= array.size / 2 works well because 5 / 2 = 2, will iterate twice

def reverse!(array)
  index = 1

  while index <= array.size / 2
    array[index - 1], array[-index] = array[-index], array[index - 1]
    index += 1
  end
  array
end

list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true