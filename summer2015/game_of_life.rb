@board = [[1, 0, 0, 0, 0, 1, 0, 0, 1, 0],
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

  def count_neighbors
    @live = 0
        @dead = 0
    @board.each_with_index do |row,row_index|
      x = row_index
      row.each_with_index do |element,col_index|
        y = col_index
        
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
        # if @live < 2 || @live > 3
        #   @board[x][y] = "dead"
        # elsif @live == 3||2
        #   @board[x][y] = "live"
        # else
        #   puts "read me"
        # end   

        # if @board[x][y] == ' '
        #   if @live == 3
        #     @board = "live"
        #   end
        # end

          # p @board[x][y]
       end
       # p @live
       #   p @dead
         
       #   p "~~~~~~~~~~~~~~~~~~~~~"
       #   @live = 0
       #  @dead = 0
    end
  end

  count_neighbors

  