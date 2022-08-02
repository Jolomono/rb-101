# rotating matrices
# make        into
# 1 2 3 4     5 1
# 5 6 7 8     6 2
#             7 3
#             8 4
# first create the appropriate amount of rows for the result(sub arrays)
# rows will equal the size of the first sub array
# then iterate through each sub_array adding this row to the front of the result
#   sub_arrays

def rotate90(matrix)
  result = []
  num_rows = matrix.first.size
  num_rows.times {result << [] }
  matrix.each do |sub_array|
    sub_array.each_with_index do |element, index|
      result[index].unshift(element)
    end
  end
  result
end

# p rotate90([[1,2,3,4],[5,6,7,8]])

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2