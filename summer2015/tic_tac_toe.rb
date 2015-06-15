# Tic Tac Toe

# You have probably heard of this one before.  3 X 3 grid.
# Three in a row wins. Filling the board is a stalemate.

# Steps
# Build the board (hint: matrix)
# Player chooses a square
# Computer chooses a square
# Display board
# Evaluate if there is a winner  (three in a row)
# Break if the board fills

# Bonus
# Keep score / multiple games
# Choose:  2 player or against computer
# Player chooses X or O



board = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]  

# a = board[0][0] 
# b = board[0][1]
# c = board[0][2]
# d = board[1][0]
# e = board[1][1]
# f = board[1][2]
# g = board[2][0]
# h = board[2][1]
# i = board[2][2]

# # to check
# game = [a, b, c, d, e, f, g, h, i]
# game.each do |way|
#   puts way
# end

puts "what you choose?"
puts "x or o"
user = gets.chomp
puts "you are #{user}"

while (user != "x" && user != "o")
  puts "Please type either 'x' or 'o'"
  user = gets.chomp
end

if user == "x"
  computer = "o"
else
  computer = "x"
end

puts "choose your place: (1, 2, ...., 9)"
user_place = gets.chomp

puts "your place is #{user_place}"
board.delete(user_place)
puts board

# computer_place = board[rand[rand(1..3)]]
# puts "computer_place : #{computer_place}"






