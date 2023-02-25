# def transpose(matrix)
#   result = []
#   3.times do |column|
#     result << matrix.map { |row| row[column] }         
#   end
#   result
# end

def transpose(matrix)
  matrix.map.with_index do |row, column_idx|
    row.map.with_index { |_, row_idx| matrix[row_idx][column_idx] }
  end
end

# Further Exploration

def transpose!(matrix)
  matrix.map!.with_index do |row, column_idx|
    row.map.with_index { |_, row_idx| matrix[row_idx][column_idx] }
  end
end


matrix = [
  [1, 5, 8, 9],
  [4, 7, 2, 7],
  [3, 9, 6, 2],
  [2, 8, 4, 1]
]

new_matrix = transpose!(matrix)

p new_matrix
p matrix