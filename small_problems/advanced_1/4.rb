require 'pry'

def transpose(matrix)
  result = [[], [], []]
  matrix.each do |sub_arr|
    sub_arr.each_with_index do |element, index|
      result[index] << element
    end
  end
  result
end

def transpose_2(matrix)
  result = []
  matrix.each_with_index do |sub_arr, sub_index|
    # remember, sub_index will stay 0 for the entire first sub_array
    sub_arr.each_with_index do |element, index|
      if result[index]
        # if result has contains an array at index
        result[index][sub_index] = element
      else
        # if result doesn't have an array at indexy, make an array and put this element in it
        result[index] = [element]
      end
    end
  end
  result
end

p transpose_2([[1,2,3,4]])
p transpose_2([[1], [2], [3], [4]])
p transpose_2([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose_2([[1]]) == [[1]]
p transpose_2([[1,2,3,4],[5,6,7,8]])
