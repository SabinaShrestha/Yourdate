@board = [
[1, 0, 0, 0, 0, 1, 0, 0, 1, 0],
[0, 0, 0, 0, 0, 1, 1, 1, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 1, 1, 0, 0, 0, 1, 0, 0],
[1, 1, 0, 0, 0, 0, 0, 0, 1, 0],
[0, 0, 1, 0, 0, 0, 0, 1, 0, 0],
[1, 0, 0, 0, 0, 1, 0, 0, 0, 1],
[0, 0, 0, 0, 0, 1, 1, 0, 0, 1],
[0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
[0, 0, 0, 1, 0, 0, 0, 0, 0, 1]
]


x = 1
y = 1
@live = 0
@dead = 0
 if @board[x - 1][y - 1] ==  1
          @live += 1
        elsif @board[x - 1][y - 1] == 0 
          @dead += 1
        elsif @board[x - 1][y] == 1
          @live += 1
        elsif @board[x - 1][y] == 0
          @dead += 1
        elsif @board[x - 1][y + 1] == 1 
          @live += 1
        elsif @board[x - 1][y + 1] == 0
          @dead += 1
        elsif @board[x][y - 1] == 1
          @live += 1
        elsif @board[x][y - 1] == 0
          @dead += 1
        elsif @board[x][y + 1] == 1
          @live += 1
        elsif @board[x][y + 1] == 0
          @dead += 1
        elsif @board[x + 1][y - 1] == 1 
          @live += 1
        elsif @board[x + 1][y - 1] == 0
          @dead += 1
        elsif @board[x + 1][y] == 1
          @live += 1
        elsif @board[x + 1][y] == 0
          @dead += 1
        elsif @board[x + 1][y + 1] == 1
          @live += 1
        elsif @board[x + 1][y + 1] == 0
          @dead += 1
        else
          puts "do it again"
        end
          p @dead 
          p @live