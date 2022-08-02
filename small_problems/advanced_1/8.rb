# Merge sort
# Take a single array
# split it up into nested arrays until every nested array has one element
# then combine arrays, sorting the elements when they are combined
# return the sorted single array

require 'pry'

def merge(arr1, arr2)
  p "merging #{arr1} and #{arr2}"
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

def merge_sort(array)
  return array if array.size == 1

  first_half = array.slice!(0, array.size / 2)
  second_half = array

  first_half = merge_sort(first_half)

  second_half = merge_sort(second_half)

  merge(first_half, second_half)
end

p merge_sort([9, 5, 7, 1, 3])
# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]