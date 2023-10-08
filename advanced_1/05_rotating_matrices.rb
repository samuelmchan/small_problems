# def rotate90(matrix)
#   result = []
#   matrix[0].size.times do |column|
#     new_row = []
#     matrix.each.with_index do |row, row_idx|
#       new_row.prepend(row[column])
#     end
#     result << new_row
#   end
#   result
# end

def rotate90(matrix)
  result = []
  matrix.first.size.times do |column|
    result << matrix.reverse.map { |row| row[column] }
  end
  result
end

# Further Exploration
# Set iterations argument to 1 for 90, 2 for 180, 3 for 270 etc..

def rotate90_with_iterator(matrix, iterations=1)
  iterations.times do |_|
    matrix = rotate90(matrix)
  end
  matrix
end


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

p rotate90_with_iterator(matrix1, 1)
p rotate90_with_iterator(matrix2, 2)
p rotate90_with_iterator(matrix2, 3)

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

