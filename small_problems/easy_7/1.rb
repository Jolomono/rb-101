# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

def interleave(arr1, arr2)
  result = []
  index = 0
  while index < arr1.size
    result << arr1[index] << arr2[index]
    index += 1
  end
  result
end

p interleave([1,2,3], ['a', 'b', 'c'])