# merge sorted lists - two arrays as arguments
# arrays start sorted but need to be added to result array in correct order

# create a result array
# create a loop that
# compares the first element of each of the two arrays
# create two indexes for iterating through each array
# if the first is lower or equal to the second, add it to the array and add 1 to
#  the index for that array
# continue until both indexes are out of range, meaning every element has been
# compared and added

require 'pry'

def merge(arr1, arr2)
  result = []
  index_1 = 0
  index_2 = 0
  until arr1[index_1] == nil && arr2[index_2] == nil do
    if arr1[index_1] == nil
      result << arr2[index_2]
      index_2 += 1
    elsif arr2[index_2] == nil
      result << arr1[index_1]
      index_1 += 1
    elsif arr1[index_1] <= arr2[index_2]
      result << arr1[index_1]
      index_1 += 1
    else
      result << arr2[index_2]
      index_2 += 1
    end
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]


