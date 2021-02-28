# matrix.rb
# write ruby method that will rotate a matrix 90 degrees counter-clockwise (or π/2 radians).

# Ex:

# 0 0 0 0
# 0 X 0 0
# X X X 0
# 0 0 0 0

# 0 0 0 0
# 0 0 X 0
# 0 X X 0
# 0 0 X 0

class Matrix


  # Method 1
  def self.rotate_ryan(matrix)
    # get dimensions
   row_size = matrix.size
   column_size = matrix[0].size

   # Create new array with swapped dimensions, and reverse the values
   # Array.new(array_size) create a new array with 'array_size' elements
   # Create a new array (which will contain the row_size)
   # The block result will be the value in the Array being created
   rotated = Array.new(column_size) do |c|  
    Array.new(row_size) do |r|  # Create the new colums
      matrix[r][column_size - c - 1 ] 
    end
   end
  end

  # Method 2
  def self.rotate_carlos(matrix)
    row_length = matrix.length 
    col_length = matrix.first.length # matrix[0].length
    new_matrix = []
    matrix.each {|row| puts row.inspect}
    (col_length-1).downto(0).each do |col_index| # Iterating from the last column to the beginning
      new_row = []                               # Create a new row
      (0..row_length-1).each do |row_index|      # Iterate through all the rows from the beginning
        puts "Current Position matrix[#{row_index}][#{col_index}] =>  #{matrix[row_index][col_index]}"
        new_row << matrix[row_index][col_index]  # Save the result from the matrix at [row_index, column_index]
      end
      puts new_row.inspect
      new_matrix << new_row
    end
    new_matrix
  end

  # Method 3
  def self.rotate(matrix)
    matrix.transpose.reverse
  end

end

