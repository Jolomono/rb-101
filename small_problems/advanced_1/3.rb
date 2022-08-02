# transpose a 3 x 3 matrix array
# so this becomes this
# [[1, 5, 8]    [[1, 4, 3]
#  [4, 7, 2]     [5, 7, 9]
#  [3, 9, 6]]    [8, 2, 6]
# so iterate over each element of each sub-array
# add each element to the sub-array at its index in the result array
# so the first element of the sub-array would be in the first sub-array of the result array etc

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

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

