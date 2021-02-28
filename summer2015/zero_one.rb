@array = [[0,0,0,0],[0,1,1,0],[1,1,1,1],[0,0,1,1,]]
# count zeros

def count
  @zero = 0
  @one = 0
@array.each_with_index do |element,row_index|
  x = row_index
  element.each_with_index do |column,col_index|
    y = col_index
    if @array[x][y] == 0
      @zero += 1
    else
      @one += 1
    end
    
  end
  p @zero
    p @one
    p "~~~~~~~~~~~~"
    @zero = 0
    @one = 0
end

end

 count

 # @grid = Array.new(10) { Array.new(10) { rand(3).zero? } }

 # # @grid.map {|row| puts row.inspect}


 # def lives_on?(row, col)
 #    neighborhood = (-1..1).map { |r| (-1..1).map { |c| @grid[row + r] && @grid[row + r][col + c] } }
 #    its_alive = neighborhood[1].delete_at(1)
 #    neighbors = neighborhood.flatten.count(true)
 #    neighbors == 3 || neighbors == 2 && its_alive
 #  end
 # # p @grid
 # p neighbours
 # lives_on?(10, 10)

#  array = [1, 1, 1, 1, 0]
# naya =  array[rand(3).zero?]
# p naya